'use strict';

const mysql = require('mysql');
const configDb = require('../config/db');

let connection = mysql.createConnection(configDb)

exports.runQuery = (query, callback) => {
    connection.connect((error) => {
        if (error) return callback(error)
        connection.query(query, (error, results) => {
            connection.end();
            return callback(error, results)
        })
    });
}
