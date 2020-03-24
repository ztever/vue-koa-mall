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

router.get("/login", async (ctx, next) => {
  const md5 = crypto.createHash("md5");
  const loginMsg = ctx.req.body;
  const phone = "188888888888";
  const pwd = md5.update("zt123456").digest("hex");

  try {
    const result = await db(
      'select id from tour_user where user_phone="' +
        phone +
        '" and user_pwd="' +
        pwd +
        '"'
    );
    const [item] = result;
    if (!item)
      ctx.body = { code: 205, data: null, message: "用户不存在或密码错误" };
    else ctx.body = { code: 200, data: item.id, message: "" };
  } catch (err) {
    ctx.body = { code: 400, data: null, message: "登录失败，请重新操作" };
  }
});

// router.get("/string", async (ctx, next) => {
//   ctx.body = "koa2 string";
// });

// router.get("/json", async (ctx, next) => {
//   ctx.body = {
//     title: "koa2 json"
//   };
// });

module.exports = router;
