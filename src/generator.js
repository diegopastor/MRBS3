'use strict';

require('prototypes');
const {executeQuery} = require('./sql');

const KEYWORD_PREFIX = '$';
const KEYWORD_DIVIDER = '-';
const MAX_USED_BASES = 40;
const GET_USED_BASES_QUERY = 'SELECT SUM(USED) FROM BASES;';
const REFRESH_BASES_QUERY = 'UPDATE BASES SET USED = 0;';
const GET_BASE_QUERY =
  'SELECT BASE FROM BASES WHERE USED != 1 ORDER BY RAND() LIMIT 1;';
const TABLES = {
  sp: ['special', 'specials'],
  ob: ['object', 'objects'],
  ad: ['adjective', 'adjectives'],
  gen: ['gen_per', 'gender'],
  ver: ['verb', 'verbs'],
  per: ['person', 'people'],
};

exports.generateTweet = callback => {
  getBase((error, base) => {
    if (error) return callback(error, null);
    console.log(`\tAttempting to fill base ${base}...`);
    fillBase(base, (error, tweet) => {
      if (error) return callback(error, null);
        // Start every sentence with Capital Letter and finish with dot
        tweet = tweet.capitalize() + '.';
      return callback(null, tweet);
    });
  });
};

function getBase(callback) {
  refreshBases(error => {
    if (error) return callback(`Can't refresh bases, ${error}`);
    console.log('\tGetting new base...');
    executeQuery(GET_BASE_QUERY, (error, result) => {
      if (error) return callback(`Can't get base: ${error}`);
      let base = Object.values(result[0])[0];
      executeQuery(
        `UPDATE BASES SET USED = 1 WHERE BASE = "${base}";`,
        error => {
          if (error) return callback(`Can't updated used bases: ${error}`);
          return callback(null, base);
        },
      );
    });
  });
}

function refreshBases(callback) {
  console.log('\tAttempting to refresh bases...');
  executeQuery(GET_USED_BASES_QUERY, (error, result) => {
    if (error) return callback(`error obtaining used amount: ${error}`);
    let usedBases = Object.values(result[0])[0];
    if (usedBases > MAX_USED_BASES) {
      executeQuery(REFRESH_BASES_QUERY, error => {
        if (error) return callback(`error seting USED to 0: ${error}`);
        console.log('Bases refreshed ');
      });
    }
      console.log(`\tBases not refreshed: ${usedBases}/${MAX_USED_BASES} used`)
    return callback();
  });
}

function fillBase(base, callback) {
  if (!base.contains(KEYWORD_PREFIX)) {
    return callback(null, base);
  } else {
    let leftmostToReplace = base
      .slice(base.indexOf(KEYWORD_PREFIX) + 1)
      .substringUpTo(' ')
      .substringUpTo('.')
      .substringUpTo(',')
      .substringUpTo('"');
    let table = leftmostToReplace.split(KEYWORD_DIVIDER)[0];
    let category = leftmostToReplace.split(KEYWORD_DIVIDER)[1];
    buildQuery(table, category, query => {
      console.log(`\tFinding replacement for ${leftmostToReplace}`);
      getReplacement(query, (error, replacement) => {
        if (error) return callback(`Error obtaining replacement: ${error}`);
        base = base.replace(KEYWORD_PREFIX + leftmostToReplace, replacement);
        console.log(`\tBase is now: ${base}`);
        fillBase(base, callback);
      });
    });
  }
}

function buildQuery(table, category, callback) {
  let singularOfTable = TABLES[table][0];
  table = TABLES[table][1];
  return callback(
    `SELECT ${singularOfTable} FROM ${table} WHERE TAG = "${category}" ORDER BY RAND() LIMIT 1;`,
  );
}

function getReplacement(query, callback) {
  executeQuery(query, (error, result) => {
    if (error)
      return callback(`Error querying for replacement: ${error}`, null);
    let replacement = Object.values(result[0])[0];
    return callback(error, replacement);
  });
}
