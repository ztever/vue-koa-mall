const Koa = require("koa");
const app = new Koa();
const views = require("koa-views");
const json = require("koa-json");
const onerror = require("koa-onerror");
const bodyparser = require("koa-body");
const logger = require("koa-logger");
// const koaJwt = require("koa-jwt"); //路由权限控制
const { tokenCheck } = require("./helper/token");
const auth = require("./routes/auth");
const users = require("./routes/users");
const captcha = require("./routes/captcha");
const home = require("./routes/home");
const setSession = require("./helper/session");
const upload = require("./routes/upload");
// error handler
onerror(app);
// session
// app.use(session(CONFIG, app));
app.use(setSession(app));

// middlewares
app.use(
  bodyparser({
    // enableTypes: ["json", "form", "text"],
    multipart: true
  })
);
app.use(json());
app.use(logger());
app.use(require("koa-static")(__dirname + "/public"));

app.use(
  views(__dirname + "/views", {
    extension: "pug"
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
        message: "token过期"
      };
    } else if (result && result.name === "JsonWebTokenError") {
      ctx.body = {
        code: 20007,
        message: "token must be provided"
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
app.use(home.routes(), home.allowedMethods());
app.use(auth.routes(), auth.allowedMethods());
app.use(users.routes(), users.allowedMethods());
app.use(captcha.routes(), captcha.allowedMethods());
app.use(upload.routes(), upload.allowedMethods());

// error-handling
app.on("error", (err, ctx) => {
  console.error("server error", err);
  // ctx.body = {
  //   code: 500,
  //   message: "服务错误"
  // };
});

module.exports = app;
