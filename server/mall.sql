/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 29/04/2020 21:19:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for home_banner
-- ----------------------------
DROP TABLE IF EXISTS `home_banner`;
CREATE TABLE `home_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_banner
-- ----------------------------
BEGIN;
INSERT INTO `home_banner` VALUES (1, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/106917/32/19399/92603/5e9fc0e9Ed4d34c70/876f739a013674be.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (2, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/118055/29/2327/42230/5ea122cdE34f20c14/9defbfdaafcc1818.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (3, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/110899/6/2499/120902/5ea287ceE4472d404/3650b27ee5bfe49f.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (4, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/111714/20/2565/101443/5ea25e05Ef351f6a7/5a3a73db85fe054b.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (5, 'https://imgcps.jd.com/ling4/100006713417/5omL5py66LSt5a6e5oOg/5aSH6LSn6LaF5YC8/p-5c13869682acdd181deefedf/b61f345c/cr_1125x445_0_171/s1125x690/q70.jpg');
INSERT INTO `home_banner` VALUES (6, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/115030/8/2371/146290/5ea141fbE75d280b2/ad0c4240b6957fd8.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (7, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/95842/38/12546/80187/5e4ba3e7E09e0da3b/92aac67aefdf6b6f.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (8, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/89334/6/19290/132701/5e9cfa6aE43b43796/5c2e5a153e7ce375.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (9, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/106917/32/19399/92603/5e9fc0e9Ed4d34c70/876f739a013674be.jpg!cr_1125x445_0_171!q70.jpg.dpg');
INSERT INTO `home_banner` VALUES (10, 'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/118055/29/2327/42230/5ea122cdE34f20c14/9defbfdaafcc1818.jpg!cr_1125x445_0_171!q70.jpg.dpg');
COMMIT;

-- ----------------------------
-- Table structure for home_recommend
-- ----------------------------
DROP TABLE IF EXISTS `home_recommend`;
CREATE TABLE `home_recommend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `data_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_recommend
-- ----------------------------
BEGIN;
INSERT INTO `home_recommend` VALUES (1, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/38465/5/6797/211663/5cd3b754E107cd897/e733efdd080cf918.jpg!q70.jpg.dpg,https://m.360buyimg.com/mobilecms/s150x150_jfs/t10978/8/1048112982/219858/7e876fc3/59db62edN0a6f276b.jpg!q70.jpg.dpg', '下厨做饭', '尽享鲜香', '#45CAFF,#1471FB');
INSERT INTO `home_recommend` VALUES (2, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/98940/29/15905/278639/5e762162E1eece406/013100bfca05ea12.jpg!q70.jpg.dpg,https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/51511/39/7187/256364/5d4ce5aaE4585f9fa/736d2efa2932fff3.jpg!q70.jpg.dpg', '音乐青年', '潮流乐器榜', '#45CAFF,#1471FB');
INSERT INTO `home_recommend` VALUES (3, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/52986/2/12478/18913/5d96ed2aE2ad31cb6/74ce632368b0b310.jpg!q70.jpg.dpg', '唱片潮流', '享悠然生活', '#000000');
INSERT INTO `home_recommend` VALUES (4, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/103019/29/7625/450955/5dfc7e48Ea6d77df4/c5e1e9b0e859cdc4.jpg!q70.jpg.dpg', '奇妙物语', '解压小玩具', '#000000');
INSERT INTO `home_recommend` VALUES (5, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/107789/35/13864/247410/5ea28ff1Eb5c65abf/d52e78bdd7872c47.jpg!q70.jpg.dpg', '深夜食堂', '深夜食堂', '#000000');
INSERT INTO `home_recommend` VALUES (6, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/118886/33/2895/192860/5ea4f495E553ec50a/74cf607b335d1083.jpg!q70.jpg.dpg', '木作匠人', '用木搭个家', '#000000');
INSERT INTO `home_recommend` VALUES (7, 'https://m.360buyimg.com/n1/s150x150_jfs/t29566/227/1464891645/10350/a5b133e2/5ce20cdcNd9cdd972.jpg!q70.jpg.dpg', '免息星球', '白条免息购', '#FF2A2A,#F139D2');
INSERT INTO `home_recommend` VALUES (8, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/89676/29/5758/20628/5def37a2Eff165a1c/b41fe7c9ac32f16f.jpg!q70.jpg.dpg', '每日特价', '9块9疯抢', '#FE8537,#F02B2B');
INSERT INTO `home_recommend` VALUES (9, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/88638/33/5675/28468/5def3b04E728e691f/8997a8bf07db66b7.png!q70.jpg.dpg', '品牌闪购', '汇大牌好价', '#FF765C,#FF23B3');
INSERT INTO `home_recommend` VALUES (10, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/80435/12/13755/37856/5daeb76bEc10eb013/177eb658079595d1.jpg!q70.jpg.dpg', '京东直播', '边看边买', '#FF2A00,#FF00AF');
INSERT INTO `home_recommend` VALUES (11, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/56939/39/1210/59272/5cefa52dE2f70588a/3174a20e743edd49.png!q70.jpg.dpg', '排行榜', '热销推荐', '#D400FF,#FF320A');
INSERT INTO `home_recommend` VALUES (12, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/76945/35/760/26244/5cef9705E501242ee/c56b89c0946438ef.jpg!q70.jpg.dpg', '拍拍好物', 'iphone 5折起', '#00C2AB,#3E94FF');
INSERT INTO `home_recommend` VALUES (13, 'https://m.360buyimg.com/n1/s150x150_jfs/t1/116252/24/2308/43604/5ea1359fE61a06adb/6cef94529cd1cf09.png!q70.jpg.dpg', '新品首发', '京东小魔方', '#FF765C,#FF23B3');
INSERT INTO `home_recommend` VALUES (14, 'https://m.360buyimg.com/mobilecms/s150x150_jfs/t1/50174/30/1230/9784/5cef98bfE318f8d24/4720dc4079dd568b.jpg!q70.jpg.dpg', '发现好货', '教你买买买', '#2AD396,#85BB1F');
COMMIT;

-- ----------------------------
-- Table structure for home_server_list
-- ----------------------------
DROP TABLE IF EXISTS `home_server_list`;
CREATE TABLE `home_server_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_server_list
-- ----------------------------
BEGIN;
INSERT INTO `home_server_list` VALUES (1, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/84753/1/16651/5549/5e7d5f9eE492c3864/4b9963fe16fae211.png', '京东超市');
INSERT INTO `home_server_list` VALUES (2, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/95626/6/16650/5992/5e7d5fdeE251a8742/d29fcc84ee0211f7.png', '数码电器');
INSERT INTO `home_server_list` VALUES (3, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/105719/14/16594/7294/5e7d605eE007a21e7/63392310fbb001a4.png', '京东服饰');
INSERT INTO `home_server_list` VALUES (4, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/104104/6/16755/5068/5e7d6202E212fcc22/3fda8f7d8b63b55f.png', '京东生鲜');
INSERT INTO `home_server_list` VALUES (5, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/96727/8/16477/5183/5e7d6249E4730c38a/0f70da903eded263.png', '京东到家');
INSERT INTO `home_server_list` VALUES (6, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/96542/9/16707/3569/5e7d62bcE5c4ee6a7/3bf6ac36ac9f17d9.png', '充值缴费');
INSERT INTO `home_server_list` VALUES (7, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/86437/25/16675/6585/5e7d62e4E1095d733/d0d685ed0477d268.png', '9.9元拼');
INSERT INTO `home_server_list` VALUES (8, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/110232/17/10270/4813/5e7d6310E79c9cb8d/6786eed1b786c010.png', '领券');
INSERT INTO `home_server_list` VALUES (9, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/96795/33/16662/4749/5e7d6385Ec31e4b29/f36c778122286405.png', '赚钱');
INSERT INTO `home_server_list` VALUES (10, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/97837/22/16281/7606/5e7d6411E0c0a91d6/93e0b359bfdf0239.png', 'PLUS会员');
INSERT INTO `home_server_list` VALUES (11, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/86956/10/16811/5922/5e7cc74dE219a3d8d/e4f7c68febc8b29a.png', '京东国际');
INSERT INTO `home_server_list` VALUES (12, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/108499/22/10229/4960/5e7cc7e3Ef0042744/e18bb8a5ee24049d.png', '京东拍卖');
INSERT INTO `home_server_list` VALUES (13, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/108831/16/10402/4901/5e7cc891Ec4a1e209/7ec6358526c83cda.png', '唯品会');
INSERT INTO `home_server_list` VALUES (14, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/87813/33/16566/5552/5e7cc8deEddd6bcb5/9afe008178b12b2b.png', '玩3C');
INSERT INTO `home_server_list` VALUES (15, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/104372/23/16606/5314/5e7cc980E1b828146/d789952095cd80b9.png', '沃尔玛');
INSERT INTO `home_server_list` VALUES (16, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/99304/34/16507/5170/5e7ccacaE08d0d35d/ea8a30610a682386.png', '美妆馆');
INSERT INTO `home_server_list` VALUES (17, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/87481/10/16552/5320/5e7ccbc7Eb8454450/c8f70349dc66e093.png', '京东旅行');
INSERT INTO `home_server_list` VALUES (18, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/88799/13/16665/5240/5e7d6448E42016d3c/77b343418a8a890d.png', '拍拍二手');
INSERT INTO `home_server_list` VALUES (19, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/107817/13/10442/6306/5e7cccc8E7f9d6c59/9e06aa68ba7ba0f0.png', '物流查询');
INSERT INTO `home_server_list` VALUES (20, 'https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/98535/20/16481/5760/5e7d646aE9b72c32e/8e063cfb6bad4654.png', '全部');
COMMIT;

-- ----------------------------
-- Table structure for recommend_for_you
-- ----------------------------
DROP TABLE IF EXISTS `recommend_for_you`;
CREATE TABLE `recommend_for_you` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `jd_market` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jump_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `plus_price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend_for_you
-- ----------------------------
BEGIN;
INSERT INTO `recommend_for_you` VALUES (1, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/17145/27/7432/88894/5c6ba6e7E4ebb82b4/dfbf85ca0abcbbfd.jpg!q70.dpg.webp', '【超值三件套】2019春秋季新款连帽卫衣男士运动服套装休闲带帽衫潮流开衫外套 739开衫3件套黑 L/建议105-115斤', '', '', '158', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (2, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (3, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/104608/7/4531/181652/5de7917eEd948fbee/73d3772f678cf4b9.jpg!q70.dpg.webp', '2020新款女装 乳木果瘦润肤衣 女春秋款长袖春秋修身显百搭紧身高弹打底上衣女 肤色 均码', '', '', '58', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (4, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (5, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/106801/35/15138/133447/5e6f4b70E3e67a407/cb38fa8211d5b5d1.jpg!q70.dpg.webp', '吹气笛套装儿童语言口肌训练口腔气笛汽笛自闭症发育迟缓康复工具 吹气笛全套10支装(已优惠16元) 颜色随机', '', '满减', '199.88', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (6, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/107804/16/12900/132065/5e9a5c4cE4a552b02/5cbffe5a8bb5f3e7.jpg!q70.dpg.webp', '超媛2020夏季男装纯色V领T恤短袖修身百搭青少年打底T恤衫上衣A2-2113A-D521 黑色 XL', '', '', '79', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (7, 'https://img30.360buyimg.com/mobilecms/s372x372_jfs/t1/109881/30/9778/71678/5e75fbd6E624b0826/f9cf5b9cf21af0ee.jpg!q70.dpg.webp', '安踏氢跑鞋男鞋2020春夏季新氢科技2.0情侣款轻便减震透气男子跑步鞋女子官网旗舰网面透气运动鞋男鞋 (男款)浅雾灰-3 8.5(男42)', '', '新品', '398', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (8, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (9, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/86447/10/18494/285635/5e955564E104d8fe8/b63045cb9d15f5b0.jpg!q70.dpg.webp', '【满300减210】亲别找啦 巴西松子150g/袋 特产干果 每日坚果 孕妇休闲零食 手剥', '', '', '300', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (10, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (11, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/87955/40/10247/230573/5e17e031Ea07e3286/27e7038d47698030.jpg!q70.dpg.webp', '韩国进口 吕(Ryo)红吕染烫修复损伤洗发水 500ml 修复受损 提亮锁色 弹力焕活 改善毛躁 柔润秀发', 'https://img12.360buyimg.com/jdphoto/jfs/t1/72687/30/15894/3057/5dd6626cEd52540be/ca9255534a3d7e6f.png', '', '59', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (12, 'https://img20.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (13, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/98774/11/612/332140/5db10113Ee66972d1/deb305fa0342d6fb.jpg!q70.dpg.webp', '绿联（UGREEN）六类CAT6类网线 千兆网络连接线 工程家用电脑宽带监控非屏蔽8芯双绞成品跳线 2米 黑 20160', '', '', '12', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 10.9');
INSERT INTO `recommend_for_you` VALUES (14, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/104608/7/4531/181652/5de7917eEd948fbee/73d3772f678cf4b9.jpg!q70.dpg.webp', '2020新款女装 乳木果瘦润肤衣 女春秋款长袖春秋修身显百搭紧身高弹打底上衣女 肤色 均码', '', '', '58', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (15, 'https://img20.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (16, 'https://img20.360buyimg.com/mobilecms/s372x372_jfs/t23815/161/2371173377/418978/fded08ae/5b7e2251N5b797362.jpg!q70.dpg.webp', '妙洁保鲜袋组合装大号50只中号70小号100共220只 抽取式加厚实塑料保险食品袋子厨房超市一次性用品', '', '', '14.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 13.9');
INSERT INTO `recommend_for_you` VALUES (17, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/91332/26/8565/85749/5e04b925E8a224c3b/da3a0ba41a74f7c0.jpg!q70.dpg.webp', '3520军工黑色【军单】布鞋男鞋0538军板鞋老北京加大码 42 黑色军单001', '', '', '19', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (18, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (19, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/96178/19/16587/97426/5e7e9e8cE1d183b6f/2b5e73f1ebae52ab.jpg!q70.dpg.webp', '董事茶白毫银针 政和白茶茶叶 牡丹王 白牡丹全单嫩芽125g 闽景印象2020头春茶叶罐装 董事茶白毫银针125g', '', '', '188', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (20, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (21, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/112294/15/3275/367918/5ea783aaEb3d521d5/8c8ab5aad3f9dcff.jpg!q70.dpg.webp', '宏友木 现代简约实木长条凳床尾凳原木柏木民宿家具休闲凳餐桌凳木换鞋凳子 茶色', '', '满减', '809', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (22, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (23, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/107360/34/13345/177922/5e9d247bEaa4a91dc/11ce3959b67e1256.jpg!q70.dpg.webp', 'LP 632高弹透气护手肘护臂自粘弹性绷带运动护肘绑带 黑 男女 黑色 单只 均码 长69.9cm 宽7.6cm', '', '', '59', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (24, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (25, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/98774/11/612/332140/5db10113Ee66972d1/deb305fa0342d6fb.jpg!q70.dpg.webp', '绿联（UGREEN）六类CAT6类网线 千兆网络连接线 工程家用电脑宽带监控非屏蔽8芯双绞成品跳线 2米 黑 20160', '', '', '12', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 10.9');
INSERT INTO `recommend_for_you` VALUES (26, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/104608/7/4531/181652/5de7917eEd948fbee/73d3772f678cf4b9.jpg!q70.dpg.webp', '2020新款女装 乳木果瘦润肤衣 女春秋款长袖春秋修身显百搭紧身高弹打底上衣女 肤色 均码', '', '', '58', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (27, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (28, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t23815/161/2371173377/418978/fded08ae/5b7e2251N5b797362.jpg!q70.dpg.webp', '妙洁保鲜袋组合装大号50只中号70小号100共220只 抽取式加厚实塑料保险食品袋子厨房超市一次性用品', '', '', '14.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 13.9');
INSERT INTO `recommend_for_you` VALUES (29, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/80315/40/11046/305294/5d88aef3E1406e9f1/42f552b005692432.jpg!q70.dpg.webp', 'icy设计感双层腰带牛仔裤女高腰磨毛宽松直筒裤长裤 蓝 S', '', '', '289', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (30, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (31, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t25177/113/1274220230/311349/68883578/5b908bfaN021538b3.jpg!q70.dpg.webp', '金经金属仓库货架角钢置物架子家用货架仓储库房货架超市展示架收纳架暖白色80*35*160', '', '', '399', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (32, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (33, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/113880/19/3523/276484/5ea8eee5Ebe072166/6828108c51e01c2b.jpg!q70.dpg.webp', 'Skechers斯凯奇男鞋 2020夏季新款运动耐磨舒适透气轻质休闲跑步鞋666047-BLK 666047-BLK 8/41/260mm', '', '', '359', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (34, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (35, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/91147/30/14959/40645/5e6b49e0E469c30b6/f06b4e2e926534a3.jpg!q70.dpg.webp', '新西兰原瓶进口马尔堡(Marlborough)香岱谷酒庄 12.5度长相思干白葡萄酒750ml单支装', '', '', '138', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (36, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (37, 'https://img30.360buyimg.com/mobilecms/s372x372_jfs/t1/98774/11/612/332140/5db10113Ee66972d1/deb305fa0342d6fb.jpg!q70.dpg.webp', '绿联（UGREEN）六类CAT6类网线 千兆网络连接线 工程家用电脑宽带监控非屏蔽8芯双绞成品跳线 2米 黑 20160', '', '', '12', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 10.9');
INSERT INTO `recommend_for_you` VALUES (38, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/104608/7/4531/181652/5de7917eEd948fbee/73d3772f678cf4b9.jpg!q70.dpg.webp', '2020新款女装 乳木果瘦润肤衣 女春秋款长袖春秋修身显百搭紧身高弹打底上衣女 肤色 均码', '', '', '58', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (39, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (40, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t23815/161/2371173377/418978/fded08ae/5b7e2251N5b797362.jpg!q70.dpg.webp', '妙洁保鲜袋组合装大号50只中号70小号100共220只 抽取式加厚实塑料保险食品袋子厨房超市一次性用品', '', '', '14.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 13.9');
INSERT INTO `recommend_for_you` VALUES (41, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/102582/26/19458/107325/5ea320d1E7df772f1/d3dcd14dbbba178a.jpg!q70.dpg.webp', 'BELLE/百丽冬新商场同款牛皮革男商务休闲鞋6UE01DM9商务休闲鞋纯色软面皮 黑色 40', '', '', '659', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (42, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (43, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t943/305/1107007540/51030/f5f89019/557549aeN0b574e01.jpg!q70.dpg.webp', '美厨（maxcook）不锈钢水果叉 咖啡勺状元系列10件套装MCTT-0110 （加厚 结实耐用 精致小巧 用餐必备 ）', '', '', '39.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (44, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (45, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/116153/21/1630/56068/5e997d55E6ae11ef0/535941d8757967d8.jpg!q70.dpg.webp', '老庙黄金 足金转运珠三生三世与你相伴情侣转运珠 圆球转运珠', '', '满减', '676', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (46, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (47, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t23815/161/2371173377/418978/fded08ae/5b7e2251N5b797362.jpg!q70.dpg.webp', '妙洁保鲜袋组合装大号50只中号70小号100共220只 抽取式加厚实塑料保险食品袋子厨房超市一次性用品', '', '', '14.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 13.9');
INSERT INTO `recommend_for_you` VALUES (48, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (49, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/107099/38/11664/525044/5e8c1f76E700300c5/19071fb213ed1b36.jpg!q70.dpg.webp', '云蕾 一次性手套100支装加厚盒装抽取式卫生食品用手套 10670', '', '', '11.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (50, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/106801/35/15138/133447/5e6f4b70E3e67a407/cb38fa8211d5b5d1.jpg!q70.dpg.webp', '吹气笛套装儿童语言口肌训练口腔气笛汽笛自闭症发育迟缓康复工具 吹气笛全套10支装(已优惠16元) 颜色随机', '', '满减', '199.88', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (51, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (52, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (53, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (54, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/100263/25/15372/235007/5e730880Ef2965687/38846ec555621c39.jpg!q70.dpg.webp', '新品同款迪士尼儿童秋衣秋裤纯棉内衣男女童高腰护肚裤宝宝秋衣套装婴儿0-1-3岁 蓝色小车肩开套装 66cm', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (55, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/114418/3/1766/178082/5e9ba894E542e8f47/0f60d14ecbccdc94.jpg!q70.dpg.webp', '超媛短袖T恤男夏季2020新款潮流宽松港风衣服男装纯棉潮牌半袖A3-1139-MYY1137 天蓝色 M', '', '', '79', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (56, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/85897/31/8444/420789/5e044854E985b5ae5/8837831d65bd4c0f.jpg!q70.dpg.webp', '手机防水袋潜水手机套温泉游泳潜水触屏苹果华为手机袋通用防水套 黑色', '', '', '58', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (57, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/79049/40/6483/96484/5d4aa63dE42dd307f/aecd2adb3f4b4dbf.jpg!q70.dpg.webp', '蜡疗机用蜡 理疗 固体石蜡 蜡疗蜡精炼56-58度1000克装 蜡疗机用蜡热敷用蜡', '', '', '34', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 32.3');
INSERT INTO `recommend_for_you` VALUES (58, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/83261/12/15161/167527/5dc901baE314c8dc4/23384e1eb6e3aab8.jpg!q70.dpg.webp', '绿联（UGREEN）USB3.0分线器 高速4口HUB扩展坞集线器 笔记本电脑一拖四转换器延长线带电源接口1.5米30221', '', '', '59', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (59, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (60, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (61, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (62, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (63, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/100263/25/15372/235007/5e730880Ef2965687/38846ec555621c39.jpg!q70.dpg.webp', '新品同款迪士尼儿童秋衣秋裤纯棉内衣男女童高腰护肚裤宝宝秋衣套装婴儿0-1-3岁 蓝色小车肩开套装 66cm', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (64, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/114418/3/1766/178082/5e9ba894E542e8f47/0f60d14ecbccdc94.jpg!q70.dpg.webp', '超媛短袖T恤男夏季2020新款潮流宽松港风衣服男装纯棉潮牌半袖A3-1139-MYY1137 天蓝色 M', '', '', '79', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (65, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/79049/40/6483/96484/5d4aa63dE42dd307f/aecd2adb3f4b4dbf.jpg!q70.dpg.webp', '蜡疗机用蜡 理疗 固体石蜡 蜡疗蜡精炼56-58度1000克装 蜡疗机用蜡热敷用蜡', '', '', '34', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 32.3');
INSERT INTO `recommend_for_you` VALUES (66, 'https://img20.360buyimg.com/mobilecms/s372x372_jfs/t1/107500/14/2245/126573/5e045c3bEaa86cf2b/0491dd3c07ede640.jpg!q70.dpg.webp', '苹果iPhoneX/8plus用手机防水袋潜水套触屏水下拍照三防壳 苹果Xs Max用【黑色+透明】 6.5寸', '', '', '72', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (67, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/88681/35/15970/192582/5e76a83cEd5e6a9b1/b5cf4fca35a339c1.jpg!q70.dpg.webp', '嫣沫夏季短袖T恤男士打底衫春秋2020新款潮牌五分袖衣服男装夏装A3-1118#8-A109我 白色 M', '', '', '100.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (68, 'https://img20.360buyimg.com/mobilecms/s372x372_jfs/t1/98663/9/15254/198067/5e6f4b71E4cde1f4a/79d9d982225ce94a.jpg!q70.dpg.webp', '品质优选新款韩版手提大容量化妆包大号防水化妆箱可爱多功能化妆品收纳包洗漱化妆包大容量 金色', '', '满减', '165', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (69, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/19502/40/12531/30462/5c998262Eb5eab7ae/6647ba13b4dda694.jpg!q70.dpg.webp', '妙洁 纸杯一次性杯子 100只装228ml加厚型', '', '', '18.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 17.9');
INSERT INTO `recommend_for_you` VALUES (70, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/95557/23/17142/593391/5e83f7c1E433f4707/5e0f878941970698.jpg!q70.dpg.webp', '新品迪士尼同款 新生儿衣服纯棉0-3个月6秋衣裤女宝宝春秋季男初生婴儿和尚服套装 2001米奇蓝(两用裆) 66cm(建议满月后9-13斤)', '', '', '39', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (71, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (72, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (73, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (74, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/100263/25/15372/235007/5e730880Ef2965687/38846ec555621c39.jpg!q70.dpg.webp', '新品同款迪士尼儿童秋衣秋裤纯棉内衣男女童高腰护肚裤宝宝秋衣套装婴儿0-1-3岁 蓝色小车肩开套装 66cm', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (75, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/110168/28/10520/118187/5e7ec452E82b2ea1b/420d2655f78437fc.jpg!q70.dpg.webp', '超媛纯色短袖T恤男士体恤白色黑色修身打底衫夏季男装韩版半袖衣服A2-1164-778 白色 M', '', '', '69.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (76, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/79049/40/6483/96484/5d4aa63dE42dd307f/aecd2adb3f4b4dbf.jpg!q70.dpg.webp', '蜡疗机用蜡 理疗 固体石蜡 蜡疗蜡精炼56-58度1000克装 蜡疗机用蜡热敷用蜡', '', '', '34', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 32.3');
INSERT INTO `recommend_for_you` VALUES (77, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/99099/31/10681/275946/5e1edc3fE0ca69165/a9a9179297eaa804.jpg!q70.dpg.webp', '毕亚兹 HDMI转VGA线转换器 高清视频转接头适配器 小米笔记本电脑盒子电视显示器投影仪线 ZH62-黑', '', '', '19.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 18.8');
INSERT INTO `recommend_for_you` VALUES (78, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/95557/23/17142/593391/5e83f7c1E433f4707/5e0f878941970698.jpg!q70.dpg.webp', '新品迪士尼同款 新生儿衣服纯棉0-3个月6秋衣裤女宝宝春秋季男初生婴儿和尚服套装 2001米奇蓝(两用裆) 66cm(建议满月后9-13斤)', '', '', '39', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (79, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (80, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/76358/19/7703/209327/5d5a4771E08a4d2c7/fb83f9295e14172a.jpg!q70.dpg.webp', '旅行化妆包韩国小号便携女化妆袋手拿大容量简约随身化妆品收纳包 藏青花朵', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (81, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (82, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (83, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/100263/25/15372/235007/5e730880Ef2965687/38846ec555621c39.jpg!q70.dpg.webp', '新品同款迪士尼儿童秋衣秋裤纯棉内衣男女童高腰护肚裤宝宝秋衣套装婴儿0-1-3岁 蓝色小车肩开套装 66cm', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (84, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/114418/3/1766/178082/5e9ba894E542e8f47/0f60d14ecbccdc94.jpg!q70.dpg.webp', '超媛短袖T恤男夏季2020新款潮流宽松港风衣服男装纯棉潮牌半袖A3-1139-MYY1137 天蓝色 M', '', '', '79', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (85, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/98663/9/15254/198067/5e6f4b71E4cde1f4a/79d9d982225ce94a.jpg!q70.dpg.webp', '品质优选新款韩版手提大容量化妆包大号防水化妆箱可爱多功能化妆品收纳包洗漱化妆包大容量 金色', '', '满减', '165', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (86, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/19502/40/12531/30462/5c998262Eb5eab7ae/6647ba13b4dda694.jpg!q70.dpg.webp', '妙洁 纸杯一次性杯子 100只装228ml加厚型', '', '', '18.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 17.9');
INSERT INTO `recommend_for_you` VALUES (87, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/99099/31/10681/275946/5e1edc3fE0ca69165/a9a9179297eaa804.jpg!q70.dpg.webp', '毕亚兹 HDMI转VGA线转换器 高清视频转接头适配器 小米笔记本电脑盒子电视显示器投影仪线 ZH62-黑', '', '', '19.9', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 18.8');
INSERT INTO `recommend_for_you` VALUES (88, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/95557/23/17142/593391/5e83f7c1E433f4707/5e0f878941970698.jpg!q70.dpg.webp', '新品迪士尼同款 新生儿衣服纯棉0-3个月6秋衣裤女宝宝春秋季男初生婴儿和尚服套装 2001米奇蓝(两用裆) 66cm(建议满月后9-13斤)', '', '', '39', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (89, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/91464/7/14061/122951/5e60ca2eEe95fdb86/e9f5ba006ed66aa7.jpg!q70.dpg.webp', '【春上新】迪士尼同款婴儿和尚服初生男女宝宝秋衣0-3个月新生儿上衣春秋季半背衣 粉色 萌萌狗粉色9039 52CM【新生儿】', '', '', '20', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (90, 'https://img12.360buyimg.com/mobilecms/s372x372_jfs/t1/49090/26/14247/97177/5db074ebE373d797f/5dd00bc69ae36d7f.jpg!q70.dpg.webp', '潮牌同款 Aape新生婴儿衣服春秋冬纯棉初生内衣睡衣0个月3男1岁2女宝宝秋衣裤套装 侧开-白色 59cm(59码【身高48-54cm】)', '', '满减', '118', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (91, 'https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/103585/15/15505/58697/5e73355eEc50c901e/04f7f413c376e90c.jpg!q70.dpg.webp', '新款精致钛架眼镜框男士高端商务半框眼镜架方形眼镜 黑金C1', '', '', '169', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (92, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/100263/25/15372/235007/5e730880Ef2965687/38846ec555621c39.jpg!q70.dpg.webp', '新品同款迪士尼儿童秋衣秋裤纯棉内衣男女童高腰护肚裤宝宝秋衣套装婴儿0-1-3岁 蓝色小车肩开套装 66cm', '', '', '49', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (93, 'https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/114418/3/1766/178082/5e9ba894E542e8f47/0f60d14ecbccdc94.jpg!q70.dpg.webp', '超媛短袖T恤男夏季2020新款潮流宽松港风衣服男装纯棉潮牌半袖A3-1139-MYY1137 天蓝色 M', '', '', '79', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '');
INSERT INTO `recommend_for_you` VALUES (94, 'https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/79049/40/6483/96484/5d4aa63dE42dd307f/aecd2adb3f4b4dbf.jpg!q70.dpg.webp', '蜡疗机用蜡 理疗 固体石蜡 蜡疗蜡精炼56-58度1000克装 蜡疗机用蜡热敷用蜡', '', '', '34', 'https://home.m.jd.com/myjd/similar/list.action?skuId=41801012602', '¥ 32.3');
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'mall',
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_vip` tinyint DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (17, 'mall', 'v', '4693fbb215b8ca15a6900f0cfa164cdc', '13211111111', 'http://bpic.588ku.com/element_origin_min_pic/13/03/20/1656e56cdfe1ea2.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (18, 'mall', 'e', 'ebe1b49e3c01a7ed012ed737235fcc3b', '13211111111', 'http://bpic.588ku.com/element_origin_min_pic/13/03/20/1656e56cdfe1ea2.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (19, 'mall', 'l', 'a73f86ae408af70b67141843e7130723', '13222222222', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (20, 'mall', 'll', 'a73f86ae408af70b67141843e7130723', '13222222223', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (21, 'mall', 'lll', 'a73f86ae408af70b67141843e7130723', '13222222220', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (22, 'mall', 'llll', 'a73f86ae408af70b67141843e7130723', '13222222229', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524250&di=2b95391fb8fb74cb7b5ff8bc1c538e3b&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F17%2F03%2F09%2F660242394cd38a9ecda874003c3abc95.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (23, 'mall', 'ddd', '980ac217c6b51e7dc41040bec1edfec8', '13333333333', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524250&di=2b95391fb8fb74cb7b5ff8bc1c538e3b&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F17%2F03%2F09%2F660242394cd38a9ecda874003c3abc95.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (24, 'mall', 'ss', 'af15d5fdacd5fdfea300e88a8e253e82', '13333333332', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524247&di=ac5f970f58291cd8ca90bdef2d178282&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F20%2F1533299754-wCgQaZOltE.jpg', 0, NULL);
INSERT INTO `user_info` VALUES (25, 'test test', 'test', '47ec2dd791e31e2ef2076caf64ed9b3d', '18888888888', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585144524249&di=dbe0305f82549d63695016f9bd1ee37b&imgtype=0&src=http%3A%2F%2Fa.vpimg3.com%2Fupload%2Fmerchandise%2F128732%2FHUNHE-6931697790018-1.jpg', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ0ZXN0IiwiaWQiOjI1LCJuaWNrX25hbWUiOiJ0ZXN0IHRlc3QiLCJpYXQiOjE1ODgxNjEyMzMsImV4cCI6MTU4ODI0NzYzM30.fFLYdsPpANhSY8TgYLvWqAdUx4WJwecLfvOWBJU1v58');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
