/**
 * 用户相关的
 * @author tao.zong
 * @time 2020.3.24
 * @lastModifyTime 2020.3.24
 * @lastModifyAuthor tao.zong
 */
const router = require("koa-router")();
const db = require("../helper/db");
const crypto = require("crypto");
const { createToken } = require("../helper/token");
const { tokenCheck } = require("../helper/token");

/**
 * 获取密码的hash值
 * @param  pwd
 */
const getHashPwd = (pwd) => {
  const md5 = crypto.createHash("md5");
  return md5.update(pwd).digest("hex");
};
/**
 * 找出表中是否有用户 登录注册需要
 * @param {*} user_name
 * @param {*} telephone
 * @param {*} password
 */
const findUser = async (user_name, telephone, password) => {
  try {
    const sql = `SELECT id,nick_name,icon,telephone from user_info WHERE (user_name = '${user_name}' or telephone = '${telephone}') AND password = '${password}'`;
    const result = await db(sql);
    return result;
  } catch (error) {
    return Promise.reject(error);
  }
};

/**
 * 登录接口
 */
router.post("/login", async (ctx, next) => {
  try {
    const { user_name, password } = ctx.request.body;
    const hashPwd = getHashPwd(String(password));
    const user = await findUser(user_name, user_name, hashPwd);
    const [item] = user;
    if (!item) {
      ctx.body = { code: 205, data: null, message: "用户不存在或密码错误" };
    } else {
      const token = createToken(user_name, item.id, item.nick_name);
      ctx.body = {
        code: 200,
        data: {
          token,
          user_name,
          nick_name: item.nick_name,
          icon: item.icon,
          telephone: item.telephone
        },
        message: ""
      };
      //写入token到数据库
      const upSql = `UPDATE user_info SET token = '${token}' WHERE id = '${item.id}'`;
      db(upSql);
    }
  } catch (err) {
    console.log(err);
    ctx.body = { code: 400, data: null, message: "登录失败，请重新操作" };
  }
});
/**
 * 注册接口
 */
router.post("/registerUser", async (ctx, next) => {
  try {
    const {
      user_name,
      telephone,
      password,
      icon,
      uuid,
      verify_code
    } = ctx.request.body;

    if (verify_code !== ctx.session[uuid]) {
      ctx.body = { code: 10003, data: null, message: "验证码过期了" };
      return;
    }
    const hashPwd = getHashPwd(password);
    const user = await findUser(user_name, telephone, hashPwd);

    if (user && user[0]) {
      ctx.body = { code: 10001, data: null, message: "用户已存在" };
    } else {
      const sql = `INSERT INTO user_info (user_name, telephone,password,icon) VALUES ('${user_name}','${telephone}','${hashPwd}','${icon}')`;
      const result = await db(sql);
      if (result) {
        ctx.body = { code: 200, data: true, message: "注册成功" };
      } else {
        ctx.body = { code: 10002, data: null, message: "注册失败" };
      }
    }
  } catch (error) {
    ctx.body = { code: 10002, data: null, message: "注册失败" };
  }
});

/**
 * 修改用户信息
 */
router.put("/updateUser", async (ctx, next) => {
  try {
    const token = await tokenCheck(ctx);
    const { nick_name, icon } = ctx.request.body;

    const upSql = `UPDATE user_info SET nick_name = '${nick_name}',icon = '${icon}' WHERE id = '${token.id}'`;
    await db(upSql);
    ctx.body = { code: 200, data: null, message: "更新成功" };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "更新失败" };
  }
});
/**
 * logout
 */
router.get("/logout", async (ctx, next) => {
  try {
    const token = await tokenCheck(ctx);
    const upSql = `UPDATE user_info SET token = '' WHERE id = '${token.id}'`;
    await db(upSql);
    ctx.body = { code: 200, data: null, message: "登出成功" };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "登出失败" };
  }
});

module.exports = router;
