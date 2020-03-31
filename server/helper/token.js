/**
 * 处理token相关的方法
 * @author tao.zong
 * @time 2020.3.26
 * @lastModifyTime 2020.3.26
 * @lastModifyAuthor tao.zong
 */

const jwt = require("jsonwebtoken");
const secretkey = "jswtoken";
const unCheckPath = ["/login", "/registerUser"];
//生成token
const createToken = (user_name, id, nick_name) => {
  let content = { user_name, id, nick_name }; // 要生成token的主题信息
  return jwt.sign(content, secretkey, {
    expiresIn: 60 // 1小时过期
  });
};
//解析token
const tokenCheck = async ctx => {
  try {
    // if (unCheckPath.includes(ctx.url)) {
    //   return;
    // }
    token = ctx.header.token;
    const check = () =>
      new Promise((resolve, reject) =>
        jwt.verify(token, secretkey, (err, authData) => {
          // console.log("authData", authData, err);
          if (err) {
            reject(err);
          } else {
            resolve(authData);
          }
        })
      );
    const checkData = await check();
    console.log("checkData", checkData);
  } catch (error) {
    return Promise.reject(error);
  }
};
module.exports = {
  createToken,
  secretkey,
  tokenCheck
};
