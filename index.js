'use strict';

const {generateTweet} = require('./src/generator');
// const {postTweet, sendDM} = require('./src/twitter)

console.log('Generating tweet...');
generateTweet((error, tweet) => {
  if (error) return console.log(`Error generating tweet: ${error}`);
  return console.log(`Generated tweet: ${tweet}`);
});
