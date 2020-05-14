/**
 * 用户相关的
 * @author tao.zong
 * @time 2020.5.14
 * @lastModifyTime 2020.5.14
 * @lastModifyAuthor tao.zong
 */
const router = require("koa-router")();
const fs = require("fs");
const path = require("path");

/**
 * 上传文件
 */
router.post("/upload", async (ctx, next) => {
  try {
    // 上传单个文件
    const file = ctx.request.files.profice_pic; // 获取上传文件
    // 创建可读流
    console.log("ctx.request", ctx.request.files);

    const reader = fs.createReadStream("" + file.path);
    const filePath =
      path.join(__dirname, "../static/upload") +
      `/${file.name.replace(".jpg", "")}${new Date().getTime()}.jpg`;
    const dirPath = path.join(__dirname, "../static/upload");
    if (!fs.existsSync(dirPath)) {
      //判断staic/upload文件夹是否存在，如果不存在就新建一个

      fs.mkdir(dirPath, { recursive: true }, (err) => {
        if (err) {
          console.log("err", err);
        }
        // 创建可写流;
        const upStream = fs.createWriteStream(filePath);
        // 可读流通过管道写入可写流
        reader.pipe(upStream);
      });
    } else {
      // 创建可写流;
      const upStream = fs.createWriteStream(filePath);
      // 可读流通过管道写入可写流
      reader.pipe(upStream);
    }

    ctx.body = {
      code: 200,
      data: {
        message: "upload sucess"
      }
    };
  } catch (err) {
    console.log(err);
    ctx.body = { code: 400, data: null, message: "上传失败，请重新操作" };
  }
});

/**
 * 上传文件
 */
router.post("/uploadformdata", async (ctx, next) => {
  try {
    // 上传单个文件
    const file = ctx.request.files.profile_pic; // 获取上传文件
    // 创建可读流

    const reader = fs.createReadStream("" + file.path);
    const filePath =
      path.join(__dirname, "../static/upload") +
      `/${file.name.replace(".jpg", "")}${new Date().getTime()}.jpg`;
    const dirPath = path.join(__dirname, "../static/upload");

    if (!fs.existsSync(dirPath)) {
      //判断staic/upload文件夹是否存在，如果不存在就新建一个

      fs.mkdir(dirPath, { recursive: true }, (err) => {
        if (err) {
          console.log("err", err);
        }
        // 创建可写流;
        const upStream = fs.createWriteStream(filePath);
        // 可读流通过管道写入可写流
        reader.pipe(upStream);
      });
    } else {
      // 创建可写流;
      const upStream = fs.createWriteStream(filePath);
      // 可读流通过管道写入可写流
      reader.pipe(upStream);
    }

    ctx.body = {
      code: 200,
      data: {
        message: "upload sucess"
      }
    };
  } catch (err) {
    console.log(err);
    ctx.body = { code: 400, data: null, message: "上传失败，请重新操作" };
  }
});

module.exports = router;
