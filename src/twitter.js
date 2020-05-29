'use strict';

const Twit = require('twit');
const config = require('../config/twitter');

const T = new Twit(config);

exports.postTweet = (tweet, callback) => {
	T.post('statuses/update', { status: tweet }, callback)
};
