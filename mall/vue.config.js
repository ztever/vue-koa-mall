// const path = require("path");

// function resolve(dir) {
//   return path.resolve(__dirname, dir);
// }
module.exports = {
  /* webpack-dev-server 相关配置 */
  devServer: {
    /* 自动打开浏览器 */
    open: true,
    /* 设置为0.0.0.0则所有的地址均能访问 */
    // host: "0.0.0.0",
    port: 8888,
    // https: false,
    // hotOnly: false
    /* 使用代理 */
    proxy: {
      "/api": {
        /* 目标代理服务器地址 */
        target: "http://127.0.0.1:3005",
        /* 允许跨域 */
        changeOrigin: true,
        pathRewrite: {
          "^/api": "http://127.0.0.1:3005" //路径重写
        }
      }
    }
  },
  css: {
    loaderOptions: {
      // 给 sass-loader 传递选项
      sass: {
        // @/ 是 src/ 的别名
        // 所以这里假设你有 `src/variables.scss` 这个文件
        prependData: `
                  @import "@/styles/_mixins.scss";
                  @import "@/styles/_variable.scss";

        `
      }
    }
  },
  lintOnSave: true
  // chainWebpack: config => {
  // config.resolve.alias.set("@", resolve("src"));
  // },
  // configureWebpack: config => {
  // Object.assign(config, {
  //   // 开发生产共同配置
  //   resolve: {
  //     extensions: [".js", ".vue", ".json"] //文件优先解析后缀名顺序
  //     // alias: {
  //     //   "@": path.resolve(__dirname, "./src")
  //     // }, // 别名配置
  //     // plugins: []
  //   }
  //   // optimization: optimization2
  // });
  // config.resolve = {
  //   // 配置解析别名
  //   // extensions: [".js", ".json", ".vue", ".ts"],
  //   alias: {
  //     "@": path.resolve(__dirname, "./src"),
  //     // 'components': path.resolve(__dirname, './src/components'),
  //     store: path.resolve(__dirname, "./src/store"),
  //     api: path.resolve(__dirname, "./src/api")
  //   }
  // };
  // }
};
