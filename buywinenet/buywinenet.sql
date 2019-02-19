/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : buywinenet

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-02-19 09:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `id` int(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `pretype` varchar(255) DEFAULT NULL,
  `pretypetitle` varchar(255) DEFAULT NULL,
  `itemprice` int(255) DEFAULT NULL,
  `assnum` int(255) DEFAULT NULL,
  `integral` int(255) DEFAULT NULL,
  `storename` varchar(255) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `attention` int(11) DEFAULT NULL,
  `zhonghe` int(11) DEFAULT NULL,
  `sales` int(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', '../img/ptjgoodlistimg1.jpg', '澳大利亚 黄尾袋鼠 霞多丽白葡萄酒 750ml ', '抢', '首箱立减30元 仅需198/箱 ', '100', '25', '122', '奔富品牌馆', '10', '6666', '5555', '45435', '2019-02-16 11:58:37');
INSERT INTO `goodlist` VALUES ('2', '../img/ptjgoodlistimg2.jpg', '法国 拉菲 传说波尔多 AOC级红葡萄酒 750ml*6瓶【整箱装】 ', '减', '送礼体面 ', '101', '30', '222', '黄尾袋鼠品牌馆', '20', '1111', '4444', '3213', '2019-02-16 11:58:41');
INSERT INTO `goodlist` VALUES ('3', '../img/ptjgoodlistimg3.jpg', '澳大利亚 黄尾袋鼠 莫斯卡托 白葡萄酒 750ml ', '限', '品拉菲 享品质生活 ', '102', '555', '333', '拉菲品牌馆', '111', '22222', '333', '54654', '2019-02-15 20:34:25');
INSERT INTO `goodlist` VALUES ('4', '../img/ptjgoodlistimg4.jpg', '智利 干露 红魔鬼 黑皮诺红葡萄酒 750ml ', '免', '买一赠一 赠原品 ', '103', '333', '122', '长城品牌馆', '2222', '333333', '43', '555', '2019-02-15 20:33:58');
INSERT INTO `goodlist` VALUES ('5', '../img/ptjgoodlistimg5.jpg', '智利 干露 红魔鬼 苏维翁白葡萄酒 750ml ', '减', '带你澳游美酒 ', '104', '222', '223', '红魔鬼品牌馆', '334', '44444', '55534', '45', '2019-02-15 20:33:59');
INSERT INTO `goodlist` VALUES ('6', '../img/ptjgoodlistimg6.jpg', '澳大利亚 黄尾袋鼠 梅洛红葡萄酒 750ml ', '限', '送礼体面 ', '105', '33', '122', '德森森品牌馆', '454', '321321', '3', '4234', '2019-02-15 20:33:59');
INSERT INTO `goodlist` VALUES ('7', '../img/ptjgoodlistimg7.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '抢', '品拉菲 享品质生活 ', '106', '114', '32', '长城品牌馆', '545', '123124', '31323', '432', '2019-02-15 20:34:00');
INSERT INTO `goodlist` VALUES ('8', '../img/ptjgoodlistimg8.jpg', '法国 酩悦香槟 750ml ', '减', '时尚美酒 喝出女神范 ', '107', '22', '44', '红魔鬼品牌馆', '675', '5345435', '12321', '32432', '2019-02-15 20:34:01');
INSERT INTO `goodlist` VALUES ('9', '../img/ptjgoodlistimg9.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】 ', '限', 'ASC防伪码 放心购 ', '108', '88', '122', '德森森品牌馆', '6456', '546546', '3123', '3243', '2019-02-15 20:34:00');
INSERT INTO `goodlist` VALUES ('10', '../img/ptjgoodlistimg10.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '减', '时尚美酒 喝出女神范 ', '109', '445', '444', '黄尾袋鼠品牌馆', '45', '7657', '312312', '32', '2019-02-16 11:58:45');
INSERT INTO `goodlist` VALUES ('11', '../img/ptjgoodlistimg11.jpg', '法国 卡斯特 邦塞 精选 红葡萄酒 750ml ', '减', '品拉菲 享品质生活 ', '110', '77', '444', '拉菲品牌馆', '88', '8678', '3123', '324324', '2019-02-15 20:34:02');
INSERT INTO `goodlist` VALUES ('12', '../img/ptjgoodlistimg12.jpg', '法国 拉菲 珍藏波尔多 红葡萄酒 750ml ', '减', '送礼倍有面儿 ', '111', '66', '777', '拉菲品牌馆', '7', '78987', '213', '4324', '2019-02-15 20:34:03');
INSERT INTO `goodlist` VALUES ('13', '../img/ptjgoodlistimg13.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '减', '买一赠一 赠原品 ', '112', '324', '122', '德森森品牌馆', '66', '879', '21321', '432', '2019-02-15 20:34:04');
INSERT INTO `goodlist` VALUES ('14', '../img/ptjgoodlistimg14.jpg', '法国 卡斯特 邦塞 精选 红葡萄酒 750ml ', '免', '送礼体面 ', '113', '87', '2223', '奔富品牌馆', '5', '980', '12312', '4234', '2019-02-15 20:34:03');
INSERT INTO `goodlist` VALUES ('15', '../img/ptjgoodlistimg15.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '抢', '整箱钜惠 ', '114', '453', '44', '红魔鬼品牌馆', '6', '567564', '12321', '432', '2019-02-15 20:34:05');
INSERT INTO `goodlist` VALUES ('16', '../img/ptjgoodlistimg16.jpg', '智利 干露 红魔鬼 苏维翁白葡萄酒 750ml ', '抢', 'ASC防伪码 放心购 ', '115', '1312', '111', '长城品牌馆', '7', '535', '12321', '4324', '2019-02-15 20:34:06');
INSERT INTO `goodlist` VALUES ('17', '../img/ptjgoodlistimg17.jpg', '法国 拉菲 珍藏波尔多 红葡萄酒 750ml ', '抢', '带你澳游美酒 ', '116', '4323', '666', '德森森品牌馆', '8', '354534', '3123', '324', '2019-02-15 20:34:06');
INSERT INTO `goodlist` VALUES ('18', '../img/ptjgoodlistimg18.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '免', '送礼体面 ', '117', '32', '99', '奔富品牌馆', '50', '53453', '321321', '123213', '2019-02-16 11:58:50');
INSERT INTO `goodlist` VALUES ('19', '../img/ptjgoodlistimg19.jpg', '澳大利亚 黄尾袋鼠 梅洛红葡萄酒 750ml ', '免', '送礼倍有面儿 ', '118', '3', '55', '德森森品牌馆', '777', '5345', '32121', '12312', '2019-02-15 20:34:08');
INSERT INTO `goodlist` VALUES ('20', '../img/ptjgoodlistimg20.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '免', '首箱立减30元 仅需198/箱 ', '119', '321', '443', '德森森品牌馆', '433', '534', '321321', '213213', '2019-02-16 11:58:58');
INSERT INTO `goodlist` VALUES ('21', '../img/ptjgoodlistimg21.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】 ', '免', '时尚美酒 喝出女神范 ', '120', '4523', '122', '黄尾袋鼠品牌馆', '66', '35443', '43543', '423432', '2019-02-15 20:34:09');
INSERT INTO `goodlist` VALUES ('22', '../img/ptjgoodlistimg22.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '抢', '带你澳游美酒 ', '121', '312', '332', '拉菲品牌馆', '555', '23', '23', '321321', '2019-02-15 20:34:10');
INSERT INTO `goodlist` VALUES ('23', '../img/ptjgoodlistimg23.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '抢', '品拉菲 享品质生活 ', '122', '321', '99', '长城品牌馆', '444', '3', '131232', '214214', '2019-02-15 20:34:11');
INSERT INTO `goodlist` VALUES ('24', '../img/ptjgoodlistimg24.jpg', '法国 卡斯特 邦塞 精选 红葡萄酒 750ml ', '抢', '整箱钜惠 ', '123', '312', '122', '德森森品牌馆', '333', '12312', '2344', '12321', '2019-02-15 20:34:13');
INSERT INTO `goodlist` VALUES ('25', '../img/ptjgoodlistimg25.jpg', '法国 拉菲 珍藏波尔多 红葡萄酒 750ml ', '免', '送礼倍有面儿 ', '124', '354', '222', '红魔鬼品牌馆', '222', '4214213', '1312', '13213', '2019-02-15 20:34:12');
INSERT INTO `goodlist` VALUES ('26', '../img/ptjgoodlistimg26.jpg', '长城 华夏92 木盒珍藏级葡萄酒 750ml ', '减', 'ASC防伪码 放心购 ', '125', '65', '222', '德森森品牌馆', '555', '3213', '213214', '21321', '2019-02-15 20:34:14');
INSERT INTO `goodlist` VALUES ('27', '../img/ptjgoodlistimg27.jpg', '澳大利亚 黄尾袋鼠 梅洛红葡萄酒 750ml ', '免', '买一赠一 赠原品 ', '126', '45', '333', '奔富品牌馆', '434', '312312', '21321', '321321', '2019-02-15 20:34:13');
INSERT INTO `goodlist` VALUES ('28', '../img/ptjgoodlistimg28.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】 ', '免', '送礼体面 ', '127', '457', '122', '拉菲品牌馆', '555', '21321', '5435', '12312', '2019-02-15 20:34:15');
INSERT INTO `goodlist` VALUES ('29', '../img/ptjgoodlistimg29.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '抢', '整箱钜惠 ', '128', '654', '555', '拉菲品牌馆', '666', '3213', '435', '53', '2019-02-15 20:34:16');
INSERT INTO `goodlist` VALUES ('30', '../img/ptjgoodlistimg30.jpg', '法国 卡斯特 邦塞 精选 红葡萄酒 750ml ', '减', '首箱立减30元 仅需198/箱 ', '129', '454', '999', '黄尾袋鼠品牌馆', '50', '21321', '43243', '3543', '2019-02-16 11:58:55');
INSERT INTO `goodlist` VALUES ('31', '../img/ptjgoodlistimg31.jpg', '智利 干露 红魔鬼 苏维翁白葡萄酒 750ml ', '抢', '送礼倍有面儿 ', '130', '754', '656', '拉菲品牌馆', '453', '321', '46456', '6546', '2019-02-15 20:34:17');
INSERT INTO `goodlist` VALUES ('32', '../img/ptjgoodlistimg32.jpg', '长城 华夏92 木盒珍藏级葡萄酒 750ml ', '免', '首箱立减30元 仅需198/箱 ', '131', '645', '433', '奔富品牌馆', '323', '12', '7657', '546', '2019-02-15 20:34:19');

-- ----------------------------
-- Table structure for indexlist
-- ----------------------------
DROP TABLE IF EXISTS `indexlist`;
CREATE TABLE `indexlist` (
  `id` varchar(255) NOT NULL,
  `itemstyle` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemprice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexlist
-- ----------------------------
INSERT INTO `indexlist` VALUES ('1', '买一送一', 'img/list2.jpg', '53度 茅台王子传承2000 500ml   ', '368 元');
INSERT INTO `indexlist` VALUES ('2', '酱香优雅', 'img/list3.jpg', '53度 茅台 高尔夫酒 大师级 500ml ', '288 元');
INSERT INTO `indexlist` VALUES ('3', '酱酒世家', 'img/list4.jpg', '53度 茅台 赖茅（传承）蓝色 500ml ', '387 元');
INSERT INTO `indexlist` VALUES ('4', '飞天珍藏 收藏佳品', 'img/list5.jpg', '【整箱白酒】53度 茅台 飞天珍藏 475ml*4瓶 原箱发货 ', '785 元');
INSERT INTO `indexlist` VALUES ('5', '稀缺老酒 品质卓越', 'img/list7.jpg', '53度 茅台 珍品王子酒 1000ml （2008年产）   ', '312 元');
INSERT INTO `indexlist` VALUES ('6', '年份王子 酱香浓郁', 'img/list8.jpg', '53度 茅台 王子酒（2017年产）750ml ', '888 元');
INSERT INTO `indexlist` VALUES ('7', '减100元', 'img/list9.jpg', '43度 茅台喜宴酒 中国红 500ml ', '234 元');
INSERT INTO `indexlist` VALUES ('8', '买一送一', 'img/list10.jpg', '【整箱装】53度 茅台王子酒 酱色 500ml*6瓶   ', '543 元');
INSERT INTO `indexlist` VALUES ('9', '品鉴装', 'img/ljimg1.jpg', '52度 五粮液股份 六和液人和 品鉴装（光瓶）(2017年产) 500ml ', '599元');
INSERT INTO `indexlist` VALUES ('10', '立减70', 'img/ljimg2.jpg', '52度 文君酒（2013年产） 500ml ', '600元');
INSERT INTO `indexlist` VALUES ('11', '纪念酒', 'img/ljimg3.jpg', '53度 茅台 水立方 北京 国际电影节 纪念酒 （2013年产） 500ml ', '601元');
INSERT INTO `indexlist` VALUES ('12', '2013年产 品质老酒', 'img/ljimg4.jpg', '52度 习酒 习水特曲 T3 （2013年产）500ml ', '602元');
INSERT INTO `indexlist` VALUES ('13', '东方习酒 君子之品', 'img/ljimg5.jpg', '53度 习酒 窖藏 1988（2012年产）500ml ', '603元');
INSERT INTO `indexlist` VALUES ('14', '十年曹操 天地英雄', 'img/ljimg6.jpg', '55度 古井贡酒 十年陈酿（曹操瓶） （2012年产）750ml ', '604元');
INSERT INTO `indexlist` VALUES ('15', '独具风味 佳酿美酒', 'img/ljimg7.jpg', '39度 郎酒 20年 青花郎（2012年产） 500ml ', '605元');
INSERT INTO `indexlist` VALUES ('16', '年份老酒 独特品味', 'img/ljimg8.jpg', '42度 扳倒井 福樽 （2012年产）480ml ', '606元');
INSERT INTO `indexlist` VALUES ('17', '传统工艺 酒质醇厚', 'img/bjimg1.jpg', '52度 五粮国宾酒 尊品 500ml ', '607元');
INSERT INTO `indexlist` VALUES ('18', '百年泸州 浓香鼻祖', 'img/bjimg2.jpg', '52度 泸州老窖 特曲 古法酿造 500ml 52度 水井坊 收藏系列2014 500ml   ', '608元');
INSERT INTO `indexlist` VALUES ('19', '6瓶288元/瓶', 'img/bjimg3.jpg', '52度 水井坊 收藏系列2014 500ml ', '609元');
INSERT INTO `indexlist` VALUES ('20', '天然发酵 口感回归', 'img/bjimg4.jpg', '53度 郎酒 20年 青花郎 500ml ', '610元');
INSERT INTO `indexlist` VALUES ('21', '至清至纯 清香至尊', 'img/bjimg5.jpg', '53度 汾酒 黑坛20年 475ml ', '611元');
INSERT INTO `indexlist` VALUES ('22', '收藏纪念', 'img/bjimg6.jpg', '52度 洋河 梦之蓝 手工班 500ml ', '612元');
INSERT INTO `indexlist` VALUES ('23', '立减100', 'img/bjimg7.jpg', '52度 水井坊 典藏大师版 500ml ', '613元');
INSERT INTO `indexlist` VALUES ('24', '浓香朗特 领秀人生', 'img/bjimg8.jpg', '50度 郎酒 郎牌特曲T9 精英版 500ml ', '614元');
INSERT INTO `indexlist` VALUES ('25', '买一赠一 ', 'img/ptjimg1.jpg', '意大利 查理蓝布鲁斯科 甜红低泡葡萄酒 750ml ', '615元');
INSERT INTO `indexlist` VALUES ('26', '澳洲佳酿', 'img/ptjimg2.jpg', '澳大利亚 奔富 BIN2 西拉子慕合怀特葡萄酒 750ml ', '616元');
INSERT INTO `indexlist` VALUES ('27', '6瓶85/瓶', 'img/ptjimg3.jpg', '澳大利亚 奔富 洛神山庄 西拉赤霞珠 红葡萄酒 1500ml 法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】   ', '617元');
INSERT INTO `indexlist` VALUES ('28', '整箱钜惠', 'img/ptjimg4.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '618元');
INSERT INTO `indexlist` VALUES ('29', '澳洲佳酿 ', 'img/ptjimg5.jpg', '澳大利亚 奔富 父亲汤尼10年波特 甜型葡萄酒 750ml ', '619元');
INSERT INTO `indexlist` VALUES ('30', '立减40元', 'img/ptjimg6.jpg', '法国 塞拉维博若莱新酿 红葡萄酒 2018 750ml ', '620元');
INSERT INTO `indexlist` VALUES ('31', '原瓶进口', 'img/ptjimg7.jpg', '澳大利亚 黄尾袋鼠 赤霞珠红葡萄酒 750ml*6瓶 【整箱装】 ', '621元');
INSERT INTO `indexlist` VALUES ('32', '澳洲佳酿', 'img/ptjimg8.jpg', '法国 拉菲 尚品波尔多 红葡萄酒750ml【带ASC防伪码】*6瓶【整箱装】 ', '626元');
INSERT INTO `indexlist` VALUES ('33', '非凡之选 ', 'img/yjrmimg1.jpg', '马爹利 名士 干邑白兰地 700ml  ', '627元');
INSERT INTO `indexlist` VALUES ('34', '正品行货', 'img/yjrmimg2.jpg', '芝华士 12年威士忌 700ml ', '628元');
INSERT INTO `indexlist` VALUES ('35', '三档满享', 'img/yjrmimg3.jpg', '杰克丹尼 田纳西州威士忌 700ml ', '629元');
INSERT INTO `indexlist` VALUES ('36', '单一纯麦', 'img/yjrmimg4.jpg', '麦卡伦 12年单一纯麦威士忌 700ml ', '630元');

-- ----------------------------
-- Table structure for shopcarlist
-- ----------------------------
DROP TABLE IF EXISTS `shopcarlist`;
CREATE TABLE `shopcarlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `inventory` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcarlist
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `phoneNumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`phoneNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17665054024', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('17665044030', '90a407e003c2c6987820ec524b34c6ad');
INSERT INTO `user` VALUES ('18176445365', '9e6be7b8888643221144846d1424d92b');
INSERT INTO `user` VALUES ('17665054023', 'e10adc3949ba59abbe56e057f20f883e');
SET FOREIGN_KEY_CHECKS=1;
