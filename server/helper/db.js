/**
 * 数据库的配置
 * @author tao.zong
 * @time 2020.3.24
 * @lastModifyTime 2020.3.24
 * @lastModifyAuthor tao.zong
 */

const mysql = require("mysql");

const db = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "zt123456",
  database: "mall"
});
db.connect();

module.exports = (sql, callback) => {
  return new Promise((resolve, reject) => {
    db.query(sql, (err, data) => {
      if (err) reject(err);
      // 去掉RowDataPacket
      else resolve(JSON.parse(JSON.stringify(data)));
    });
  });
};
