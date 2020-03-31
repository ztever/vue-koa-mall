const Koa = require("koa");
const app = new Koa();
const views = require("koa-views");
const json = require("koa-json");
const onerror = require("koa-onerror");
const bodyparser = require("koa-bodyparser");
const logger = require("koa-logger");
const koaJwt = require("koa-jwt"); //路由权限控制
const { tokenCheck } = require("./helper/token");
const auth = require("./routes/auth");
const users = require("./routes/users");

// error handler
onerror(app);

// middlewares
app.use(
  bodyparser({
    enableTypes: ["json", "form", "text"]
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

// app.use(tokenCheck);
app.use(async (ctx, next) => {
  try {
    await tokenCheck(ctx);
    await next();
  } catch (error) {
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

// Custom 401 handling if you don't want to expose koa-jwt errors to users
// app.use(function(ctx, next) {
//   console.log("ctx koa", ctx.header);
//   return next().catch(err => {
//     console.log("error koa", error);
//     if (401 == err.status) {
//       ctx.status = 401;
//       ctx.body = "Protected resource, use Authorization header to get access\n";
//     } else {
//       throw err;
//     }
//   });
// });

// error-handling
app.on("error", (err, ctx) => {
  console.error("server error", err);
  // ctx.body = {
  //   code: 500,
  //   message: "服务错误"
  // };
  if (err.name === "TokenExpiredError") {
    ctx.body = {
      code: 500,
      message: "token过期"
    };
  }
});

module.exports = app;
