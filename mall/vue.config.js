const path = require("path");
module.exports = {
  /* webpack-dev-server 相关配置 */
  devServer: {
    /* 自动打开浏览器 */
    open: true,
    /* 设置为0.0.0.0则所有的地址均能访问 */
    // host: "0.0.0.0",
    port: 8066,
    https: false,
    hotOnly: false
    /* 使用代理 */
    // proxy: {
    //   "/api": {
    //     /* 目标代理服务器地址 */
    //     target: "http://47.100.47.3/",
    //     /* 允许跨域 */
    //     changeOrigin: true
    //   }
    // }
  }
  // configureWebpack: config => {
  //   Object.assign(config, {
  //     // 开发生产共同配置
  //     resolve: {
  //       extensions: [".js", ".vue", ".json"] //文件优先解析后缀名顺序
  //       // alias: {
  //       //   "@": path.resolve(__dirname, "./src")
  //       // }, // 别名配置
  //       // plugins: []
  //     }
  //     // optimization: optimization2
  //   });
  // }
};
