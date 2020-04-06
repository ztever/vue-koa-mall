/**
 * 公用方法
 * @author tao.zong
 * @time 2020.4.6
 * @lastModifyTime 2020.4.6
 * @lastModifyAuthor tao.zong
 */

exports.getUUID = () => {
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
    var r = (Math.random() * 16) | 0,
      v = c == "x" ? r : (r & 0x3) | 0x8;
    return v.toString(16);
  });
};
