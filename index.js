'use strict';

const {generateTweet} = require('./src/generator');
// const {postTweet, sendDM} = require('./src/twitter)

const TWEET_TIME_INTERVAL = 1000 * 60 * 60 * 4; // 4 Hours

const startBot = () => {
  console.log('Starting Bot...');
  tweet();
  setInterval(() => {
    tweet();
  }, TWEET_TIME_INTERVAL);
};

function tweet() {
  console.log('Generating tweet...');
  generateTweet((error, tweet) => {
    if (error) console.log(`Error generating tweet: ${error}`);
    console.log(`Generated tweet: ${tweet}`);
    // postTweet(tweet, error => {
    //   if (error) console.log(`Error posting tweet: ${error}`);
    // });
  });
}

startBot();
