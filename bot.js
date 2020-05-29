'use strict';

const {generateTweet} = require('./src/generator');
const {postTweet} = require('./src/twitter');

const TWEET_TIME_INTERVAL = 1000 * 60 * 60 * 4; // 4 Hours
const RETRY_ATTEMPTS = 4;

const startBot = () => {
  console.log('Starting Bot...');
  setImmediate(tweet);
  setInterval(() => {
    tweet();
  }, TWEET_TIME_INTERVAL);
};

const tweet = (attempts = 1) => {
  if (attempts >= RETRY_ATTEMPTS) {
    return console.log('Max retries attempted...');
  }
  console.log('Attempting to generate tweet...');
  generateTweet((error, tweet) => {
    if (error) {
      console.log(`Error generating tweet on attempt ${attempts}: ${error}`);
      return tweet(++attempts);
    }
    console.log(`Generated tweet: ${tweet}`);
    postTweet(tweet, error => {
      if (error) {
        console.log(`Error posting tweet on attempt ${attempts}: ${error}`);
        return tweet(++attempts);
      }
      console.log(`Tweeted: ${tweet}`);
    });
  });
};

startBot();
