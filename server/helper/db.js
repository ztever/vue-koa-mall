/**
 * 数据库的配置
 */

const mysql = require("mysql");

const db = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "zt123456",
  database: "tour"
});
db.connect();

module.exports = (sql, callback) => {
  return new Promise((resolve, reject) => {
    db.query(sql, (err, data) => {
      if (err) reject(err);
      else resolve(data);
    });
  });
};
