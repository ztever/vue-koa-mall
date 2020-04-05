const Koa = require("koa");
const app = new Koa();
const views = require("koa-views");
const json = require("koa-json");
const onerror = require("koa-onerror");
const bodyparser = require("koa-bodyparser");
const logger = require("koa-logger");
// const koaJwt = require("koa-jwt"); //路由权限控制
const { tokenCheck } = require("./helper/token");
const auth = require("./routes/auth");
const users = require("./routes/users");
const captcha = require("./routes/captcha");
const setSession = require("./helper/session");

// const session = require("koa-session");
// const session_key = ["some secret hurr"];
// const CONFIG = {
//   key: "koa:sess" /** (string) cookie key (default is koa:sess) */,
//   /** (number || 'session') maxAge in ms (default is 1 days) */
//   /** 'session' will result in a cookie that expires when session/browser is closed */
//   /** Warning: If a session cookie is stolen, this cookie will never expire */
//   // maxAge: 86400000,
//   overwrite: true /** (boolean) can overwrite or not (default true) */,
//   httpOnly: true /** (boolean) httpOnly or not (default true) */,
//   signed: true /** (boolean) signed or not (default true) */,
//   rolling: false /** (boolean) Force a session identifier cookie to be set on every response. The expiration is reset to the original maxAge, resetting the expiration countdown. (default is false) */,
//   renew: false /** (boolean) renew session when session is nearly expired, so we can always keep user logged in. (default is false)*/,
// };
// app.keys = session_key;

// error handler
onerror(app);
// session
// app.use(session(CONFIG, app));
app.use(setSession(app));

// middlewares
app.use(
  bodyparser({
    enableTypes: ["json", "form", "text"],
  })
);
app.use(json());
app.use(logger());
app.use(require("koa-static")(__dirname + "/public"));

app.use(
  views(__dirname + "/views", {
    extension: "pug",
  })
);

// logger
app.use(async (ctx, next) => {
  const start = new Date();
  await next();
  const ms = new Date() - start;
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

app.use(async (ctx, next) => {
  try {
    const result = await tokenCheck(ctx);
    if (result && result.name === "TokenExpiredError") {
      ctx.body = {
        code: 20006,
        message: "token过期",
      };
    } else if (result && result.name === "JsonWebTokenError") {
      ctx.body = {
        code: 20007,
        message: "token must be provided",
      };
    } else {
      await next();
    }
  } catch (error) {
    // ctx.body = {};
    return Promise.reject(error);
  }
});

// app.use(
//   koaJwt({ secret: secretkey }).unless({
//     path: [/^\/logins/]
//   })
// );

// routes
app.use(auth.routes(), auth.allowedMethods());
app.use(users.routes(), users.allowedMethods());
app.use(captcha.routes(), captcha.allowedMethods());

// error-handling
app.on("error", (err, ctx) => {
  console.error("server error", err);
  // ctx.body = {
  //   code: 500,
  //   message: "服务错误"
  // };
});

module.exports = app;
