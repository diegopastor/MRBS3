'use strict';

const {generateTweet} = require('./src/generator');
const {postTweet} = require('./src/twitter');

// const TWEET_TIME_INTERVAL = 1000 * 60 * 60 * 4; // 4 Hours
const TWEET_TIME_INTERVAL = 1000 * 1;

const startBot = () => {
  console.log('Starting Bot...');
  setImmediate(tweet);
  setInterval(() => {
    tweet();
  }, TWEET_TIME_INTERVAL);
};

function tweet() {
  console.log('Generating tweet...');
  generateTweet((error, tweet) => {
    if (error) return console.log(`Error generating tweet: ${error}`);
    console.log(`Generated tweet: ${tweet}`);
    postTweet(tweet, error => {
      if (error) return console.log(`Error posting tweet: ${error}`);
      console.log(`Tweeted: ${tweet}`);
    });
  });
}

startBot();
