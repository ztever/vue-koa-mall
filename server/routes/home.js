/**
 * 用户相关的
 * @author tao.zong
 * @time 2020.4.28
 * @lastModifyTime 2020.4.28
 * @lastModifyAuthor tao.zong
 */

const router = require("koa-router")();
const db = require("../helper/db");
/**
 * 登录接口
 */
router.get("/crauser", async (ctx, next) => {
  try {
    //写入token到数据库
    const sql = `SELECT * from home_banner`;
    const data = await db(sql);
    ctx.body = { code: 200, data };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "获取banner失败" };
  }
});

/**
 * 获取home页入口
 */
router.get("/navlist", async (ctx, next) => {
  try {
    //写入token到数据库
    const sql = `SELECT * from home_server_list`;
    const data = await db(sql);
    ctx.body = { code: 200, data };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "获取home入口失败" };
  }
});
/**
 * 获取京东小院
 */
router.get("/jdhome", async (ctx, next) => {
  try {
    //写入token到数据库
    const sql = `SELECT * from home_recommend`;
    const data = await db(sql);
    data.map((item) => {
      item.src = item.src.split(",");
    });
    ctx.body = { code: 200, data };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "获取京东小院失败" };
  }
});

module.exports = router;
