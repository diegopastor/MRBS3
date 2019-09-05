'use strict';

const mysql = require('mysql');
const configDb = require('../config/db');

let connection = mysql.createConnection(configDb);
connection.connect();

exports.executeQuery = (query, callback) => {
  connection.query(query, (error, results) => {
    return callback(error, results);
  });
};

exports.endConnection = () => {
  connection.end();
};
