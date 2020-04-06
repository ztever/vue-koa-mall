/**
 * 处理token相关的方法
 * @author tao.zong
 * @time 2020.3.26
 * @lastModifyTime 2020.3.26
 * @lastModifyAuthor tao.zong
 * 也可以生成uuid，然后将uuid生成时间与uuid存入用户表，做多端登录，如果进入页面的时候，token即将失效，可以延长uuid的生成时间，
 * 给token续命，如果修改了密码，则重新生成uuid，header的token与数据库的uuid不一致，则需要重新登录
 */

const jwt = require("jsonwebtoken");
const secretkey = "jswtoken";
const unCheckPath = ["/login", "/registerUser", "/captcha", "/getsms"]; //不需要验证token的接口
//生成token
const createToken = (user_name, id, nick_name) => {
  let content = { user_name, id, nick_name }; // 要生成token的主题信息
  return jwt.sign(content, secretkey, {
    expiresIn: 60 * 60, // 1小时过期
  });
};
//解析token
const tokenCheck = async (ctx) => {
  try {
    if (unCheckPath.includes(ctx.url)) {
      return true;
    }
    token = ctx.header.token;
    const check = () =>
      new Promise((resolve, reject) =>
        jwt.verify(token, secretkey, (err, authData) => {
          if (err) {
            resolve(err);
          } else {
            resolve(authData);
          }
        })
      );
    const checkData = await check();
    return checkData;
  } catch (error) {
    return Promise.resolve(error);
  }
};
module.exports = {
  createToken,
  secretkey,
  tokenCheck,
};
