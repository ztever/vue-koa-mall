/**
 * 使用session
 * @author tao.zong
 * @time 2020.4.5
 * @lastModifyTime 2020.4.5
 * @lastModifyAuthor tao.zong
 */
const session = require("koa-session");
const session_key = ["some secret hurr"];
const CONFIG = {
  key: "koa:sess" /** (string) cookie key (default is koa:sess) */,
  /** (number || 'session') maxAge in ms (default is 1 days) */
  /** 'session' will result in a cookie that expires when session/browser is closed */
  /** Warning: If a session cookie is stolen, this cookie will never expire */
  // maxAge: 86400000,
  overwrite: true /** (boolean) can overwrite or not (default true) */,
  httpOnly: true /** (boolean) httpOnly or not (default true) */,
  signed: true /** (boolean) signed or not (default true) */,
  rolling: false /** (boolean) Force a session identifier cookie to be set on every response. The expiration is reset to the original maxAge, resetting the expiration countdown. (default is false) */,
  renew: false /** (boolean) renew session when session is nearly expired, so we can always keep user logged in. (default is false)*/,
};

const setSession = (app) => {
  app.keys = session_key;
  return session(CONFIG, app);
};

module.exports = setSession;
