'use strict';

require('prototypes');
const {executeQuery} = require('./sql');

const KEYWORD_PREFIX = '$';
const KEYWORD_DIVIDER = '-';
const MAX_USED_BASES = 40;
const GET_USED_BASES_QUERY = 'SELECT SUM(USED) FROM BASES';
const REFRESH_BASES_QUERY = 'UPDATE BASES SET USED = 0';
const GET_BASE_QUERY = 'SELECT BASE FROM BASES WHERE USED != 1 ORDER BY RAND() LIMIT 1;
const TABLES = {
  sp: ['special', 'specials'],
  ob: ['object', 'objects'],
  adj: ['adjective', 'adjectives'],
  gen: ['gen_per', 'gender'],
  ver: ['verb', 'verbs'],
  per: ['person', 'people'],
};

exports.generateTweet = callback => {
  getBase((error, base) => {
    if (error) return callback(error, null);
    fillBase(base, (error, tweet) => {
      if (error) return callback(error, null);
      return callback(null, tweet);
    });
  });
};

function getBase(callback) {
    refreshBases( (error) => {
        if (error) return callback(`Can't refresh bases, ${error}`)
        executeQuery(GET_BASE_QUERY, (error, result) => {
            if (error) return callback(`Can't get base: ${error}`)
            executeQuery(`UPDATE BASES SET USED = 1 WHERE BASE = "${result}";`, callback)
        })
    })
}

function refreshBases(callback) {
    executeQuery(GET_USED_BASES_QUERY, (error, result) => {
        if (error) return callback(`error obtaining used amount: ${error}`)
        if (result > MAX_USED_BASES) {
            executeQuery(REFRESH_BASES_QUERY, (error) => {
                if (error) return callback(`error seting USED to 0: ${error}`)
            })
        }
        return callback()
    })
}

function fillBase(base, callback) {
  while (base.contains(KEYWORD_PREFIX)) {
    let leftmostToReplace = base
      .slice(base.indexOf(KEYWORD_PREFIX) + 1)
      .substringUpTo(' ')
      .substringUpTo('.')
      .substringUpTo(',')
      .substringUpTo('"');
    let table = leftmostToReplace.split(KEYWORD_DIVIDER)[0];
    let category = leftmostToReplace.split(KEYWORD_DIVIDER)[1];
    buildQuery(table, category, query => {
      getReplacement(query, (error, replacement) => {
        if (error) return callback(error);
        base = base.replace(KEYWORD_PREFIX + leftmostToReplace, replacement);
      });
    });
  }
  return callback(null, base);
}

function buildQuery(table, category, callback) {
  singularOfTable = TABLES[table][0];
  table = TABLES[table][1];
  return callback(
    `SELECT ${singularOfTable} FROM ${table} WHERE TAG = ${category} ORDER BY RAND() LIMIT 1`,
  );
}

function getReplacement(query, callback) {
    executeQuery((error, result) => {
        return callback(error, result)
    })
}
