'use strict';

exports.generateTweet = callback => {
  getBase((error, base) => {
    if (error) return callback(error, null);
    fillBase(base, (error, tweet) => {
      if (error) return callback(error, null);
      return callback(null, tweet);
    });
  });
};

// Gets a Random Base
// Out -> A String that is an unfilled base
function getBase(callback) {}

// Fills a Base
// In -> A String that is an unfilled base
// Out -> A String that is a filled base
function fillBase(base, callback) {}
