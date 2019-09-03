'use strict';

const {generateTweet} = require('./src/generator');
// const {postTweet, sendDM} = require('./src/twitter)

generateTweet((error, tweet) => {
  if (error) {
    return console.log(`Error generating tweet: ${error}`);
  }
  console.log(`Generated tweet: ${tweet}`);
});
