/**
 * 生成验证码
 * @author tao.zong
 * @time 2020.4.5
 * @lastModifyTime 2020.4.5
 * @lastModifyAuthor tao.zong
 */
const router = require("koa-router")();
const svgCaptcha = require("svg-captcha");

router.get("/captcha", function (ctx, next) {
  try {
    const captcha = svgCaptcha.create({
      color: true,
      ignoreChars: "0o1i",
      noise: 2,
      width: 100,
      // height: 30,
    });
    // ctx.session.verify_code = captcha.text.toLocaleLowerCase();
    ctx.body = { code: 200, data: captcha };
  } catch (error) {
    ctx.body = { code: 400, data: null, message: "获取验证码成功" };
  }
});
module.exports = router;
