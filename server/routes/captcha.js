/**
 * 生成验证码
 * @author tao.zong
 * @time 2020.4.5
 * @lastModifyTime 2020.4.5
 * @lastModifyAuthor tao.zong
 */
const router = require("koa-router")();
const svgCaptcha = require("svg-captcha");
// const cookieConfig = require("../configs/cookieConfig");
const { getUUID } = require("../utils/index");
//获取图片验证码
router.get("/captcha", function (ctx, next) {
  try {
    const captcha = svgCaptcha.create({
      color: true,
      ignoreChars: "0o1i",
      noise: 2,
      width: 100,
      // height: 30,
    });
    const uuid = getUUID();
    const text = captcha.text.toLocaleLowerCase();
    ctx.session[uuid] = text;
    // //可以设置cookie， 通过cookie获取
    // ctx.cookies.set(
    //   "verify_code", //name
    //   uuid, //value(可替换为token)
    //   cookieConfig
    // );
    // 将uuid传给前端
    ctx.body = {
      code: 200,
      data: {
        svg: captcha.data,
        uuid,
        text,
      },
    };
  } catch (error) {
    ctx.body = { code: 400, data: null, message: "获取验证码成功" };
  }
});

module.exports = router;
