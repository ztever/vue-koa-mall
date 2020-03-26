/**
 * 处理token相关的方法
 * @author tao.zong
 * @time 2020.3.26
 * @lastModifyTime 2020.3.26
 * @lastModifyAuthor tao.zong
 */

const jwt = require("jsonwebtoken");
const secretkey = "jswtoken";
//生成token
const createToken = (user_name, id, nick_name) => {
  let content = { user_name, id, nick_name }; // 要生成token的主题信息
  return jwt.sign(content, secretkey, {
    expiresIn: 60 * 60 * 1 // 1小时过期
  });
};
//解析token
const tokenCheck = () => {
  //
};
module.exports = {
  createToken
};
