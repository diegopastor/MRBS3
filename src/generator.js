'use strict';

require('prototypes');
const {runQuery} = require('./sql');

const KEYWORD_PREFIX = '$';
const KEYWORD_DIVIDER = '-';
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
  let i = Math.floor(Math.random() * Math.floor(bases.length));
  return callback(null, bases[i]);
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
    runQuery((error, result) => {
        return callback(error, result)
    })
}
