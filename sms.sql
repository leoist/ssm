/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : sms2022

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 22/05/2022 12:12:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2012 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_group
-- ----------------------------
INSERT INTO `tb_group` VALUES (2001, '食品');
INSERT INTO `tb_group` VALUES (2002, '饮料');
INSERT INTO `tb_group` VALUES (2003, '日用品');
INSERT INTO `tb_group` VALUES (2004, '数码产品');
INSERT INTO `tb_group` VALUES (2005, '图书');
INSERT INTO `tb_group` VALUES (2006, '玩具');
INSERT INTO `tb_group` VALUES (2007, '电子产品');
INSERT INTO `tb_group` VALUES (2008, '日常穿搭');
INSERT INTO `tb_group` VALUES (2009, '卫生健康');
INSERT INTO `tb_group` VALUES (2010, '汽车内饰');
INSERT INTO `tb_group` VALUES (2011, '时尚穿搭');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL COMMENT '类别',
  `provider_id` int(11) NULL DEFAULT NULL COMMENT '供应商编号',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `yield_date` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `product_factory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '生产工厂',
  `purchase_price` float UNSIGNED NOT NULL DEFAULT 0 COMMENT '进价',
  `stock` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `sale_price` float UNSIGNED NOT NULL DEFAULT 0 COMMENT '售价',
  `sale_count` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售量',
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_tb_product_tb_group`(`group_id`) USING BTREE,
  INDEX `fk_product_provider`(`provider_id`) USING BTREE,
  CONSTRAINT `fk_product_category` FOREIGN KEY (`group_id`) REFERENCES `tb_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_provider` FOREIGN KEY (`provider_id`) REFERENCES `tb_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES (10, 2001, 20190013, '奥利奥Update0428', '2022-03-31 00:00:00', '奥利奥饼干工厂', 3.3, 987, 6.5, 35, '2022-04-24 22:15:30');
INSERT INTO `tb_product` VALUES (11, 2003, 20190013, '黑人牙膏(薄荷味)', '2022-03-05 00:00:00', '上海宝洁日用品公司', 3.2, 960, 9.5, 50, '2022-04-24 22:16:40');
INSERT INTO `tb_product` VALUES (12, 2001, 20190014, '火腿肠', '2022-01-01 00:00:00', '北京王中王', 2.2, 140, 3, 211, '2022-04-12 23:52:48');
INSERT INTO `tb_product` VALUES (13, 2002, 20190012, '可口可乐(500ML)', '2022-02-17 00:00:00', '合肥太古可乐', 2.1, 288, 3, 12, '2022-03-02 23:53:57');
INSERT INTO `tb_product` VALUES (15, 2003, 20190014, '金口健牙膏', '2022-01-24 00:00:00', '云南白药牙膏有限公司', 6, 180, 12, 20, '2022-03-03 12:58:42');
INSERT INTO `tb_product` VALUES (16, 2007, 20190014, '神舟K670E-G6D1笔记本电脑', '2020-02-21 00:00:00', '深圳市神舟创新科技公司', 4199, 200, 5799, 10, '2022-04-25 11:05:51');
INSERT INTO `tb_product` VALUES (17, 2002, 20190013, '康师傅绿茶', '2022-04-08 00:00:00', '上海康师傅有限公司', 1.2, 200, 3, 0, '2022-04-01 11:09:10');
INSERT INTO `tb_product` VALUES (18, 2001, 20190012, '康师傅红烧拌面', '2022-03-31 00:00:00', '上海康师傅有限公司', 3.2, 100, 5, 0, '2022-04-25 13:48:18');
INSERT INTO `tb_product` VALUES (19, 2002, 20190014, '蒙牛纯牛奶250ML', '2022-03-30 00:00:00', '蒙牛乳业', 1.2, 500, 3.5, 0, '2022-04-25 14:34:46');
INSERT INTO `tb_product` VALUES (20, 2003, 20190014, '黑人牙膏（草莓味）', '2022-03-30 00:00:00', '上海宝洁有限公司', 5.2, 2000, 12, 24, '2022-04-27 13:13:11');
INSERT INTO `tb_product` VALUES (21, 2002, 20190014, '蒙牛纯牛奶 1.5L', '2022-02-03 00:00:00', '蒙牛乳业', 6, 300, 12, 0, '2022-04-27 13:14:17');
INSERT INTO `tb_product` VALUES (22, 2007, 20190014, 'ROMOSS/罗马仕 sense8P', '2022-04-06 00:00:00', '深圳罗马仕科技有限公司', 60, 487, 119, 13, '2022-04-27 13:16:48');
INSERT INTO `tb_product` VALUES (23, 2002, 20190014, '蒙牛圣牧有机牛奶品醇200ml*12', '2022-03-11 00:00:00', '蒙牛乳业', 30, 100, 79, 0, '2022-04-27 13:19:01');
INSERT INTO `tb_product` VALUES (24, 2004, 20190014, 'BOW航世笔记本外接键盘', '2020-06-27 00:00:00', 'B.O.W', 12, 3000, 39, 0, '2022-04-27 13:20:14');
INSERT INTO `tb_product` VALUES (25, 2003, 20190013, '米家电水壶1A', '2022-02-10 00:00:00', 'MIJIA/米家', 50, 276, 79, 24, '2022-04-27 13:28:15');
INSERT INTO `tb_product` VALUES (26, 2009, 20190014, '决明子枸杞菊花茶', '2022-04-06 00:00:00', '泉州市百年修本茶业有限公司', 6, 100, 59, 0, '2022-04-27 13:29:32');
INSERT INTO `tb_product` VALUES (27, 2007, 20190014, 'sense 4 mini', '2022-04-08 00:00:00', '深圳罗马仕科技有限公司', 12, 280, 39, 20, '2022-04-27 13:30:21');
INSERT INTO `tb_product` VALUES (28, 2008, 20190014, '李宁跑步鞋透气新款男鞋', '2022-05-05 00:00:00', 'Lining/李宁', 120, 300, 319, 0, '2022-04-27 13:32:32');
INSERT INTO `tb_product` VALUES (29, 2009, 20190014, '蓝禾医疗一次性使用医用口罩', '2022-03-31 00:00:00', '浙江蓝禾医疗用品有限公司', 5.2, 100, 19, 0, '2022-04-27 13:33:39');
INSERT INTO `tb_product` VALUES (30, 2010, 20190014, '临时停车牌号码汽车用品', '2022-03-30 00:00:00', '以斯帖车品专营店', 3.2, 300, 12, 0, '2022-04-27 13:35:13');
INSERT INTO `tb_product` VALUES (31, 2002, 20190014, '蒙牛真果粒礼盒装250g*24盒', '2022-03-10 00:00:00', '蒙牛乳业', 26, 100, 52, 0, '2022-04-27 13:36:00');
INSERT INTO `tb_product` VALUES (32, 2002, 20190014, '【超定制】豆本豆豆奶250ml*24盒', '2022-04-01 00:00:00', '豆本豆', 12, 300, 39, 0, '2022-04-27 13:36:56');
INSERT INTO `tb_product` VALUES (33, 2008, 20190013, '鸿星尔克开衫卫衣男', '2022-03-31 00:00:00', '鸿星尔克', 120, 300, 339, 0, '2022-04-27 13:37:48');
INSERT INTO `tb_product` VALUES (34, 2007, 20190012, '华为荣耀9x手机壳', '2022-03-30 00:00:00', '深圳罗马仕科技有限公司', 5.2, 300, 39, 0, '2022-04-27 13:38:26');
INSERT INTO `tb_product` VALUES (35, 2007, 20190013, '绿联usb扩展器转换接头', '2022-04-01 00:00:00', 'B.O.W', 6, 300, 39, 0, '2022-04-27 13:39:09');
INSERT INTO `tb_product` VALUES (36, 2001, 20190012, '威其诺自热小火锅速食', '2022-03-29 00:00:00', '蒙牛乳业', 6, 100, 39, 0, '2022-04-27 13:39:53');
INSERT INTO `tb_product` VALUES (37, 2008, 20190014, '红米k30手机壳液态硅胶', '2022-03-30 00:00:00', '蒙牛乳业', 3.2, 88, 12, 12, '2022-04-27 13:40:21');
INSERT INTO `tb_product` VALUES (38, 2008, 20190014, '取暖器小型家用小太阳', '2022-04-05 00:00:00', '上海康师傅有限公司', 5.2, 300, 39, 0, '2022-04-27 13:40:54');
INSERT INTO `tb_product` VALUES (39, 2003, 20190012, '电脑椅家用靠背办公椅', '2022-03-31 00:00:00', '上海康师傅有限公司', 120, 300, 119, 0, '2022-04-27 13:41:35');
INSERT INTO `tb_product` VALUES (40, 2003, 20190014, '联想小新air14键盘膜', '2022-04-02 00:00:00', '深圳罗马仕科技有限公司', 120, 288, 5, 12, '2022-04-27 13:42:08');
INSERT INTO `tb_product` VALUES (41, 2003, 20190014, '黑人薄荷（牙膏味）', '2022-04-06 00:00:00', '上海宝洁有限公司', 6, 200, 12, 12, '2022-04-29 00:20:23');
INSERT INTO `tb_product` VALUES (44, 2003, 20190017, '米家保温杯（500ML）黑色', '2022-04-28 00:00:00', '南京米家日用品有限公司', 36, 188, 99, 12, '2022-05-04 17:58:11');
INSERT INTO `tb_product` VALUES (45, 2007, 20190017, '测试商品0509', '2022-05-04 00:00:00', '深圳罗马电子科技技术公司', 68, 200, 168, 32, '2022-05-09 21:59:10');
INSERT INTO `tb_product` VALUES (46, 2004, 20190014, '华为Mate 40 Pro 6+128', '2022-05-03 00:00:00', '华为终端', 6299, 1000, 7999, 0, '2022-05-13 17:25:13');
INSERT INTO `tb_product` VALUES (47, 2006, 20190017, '四驱车', '2022-04-26 00:00:00', '奥飞娱乐', 34, 990, 60, 10, '2022-05-17 19:28:16');
INSERT INTO `tb_product` VALUES (48, 2002, 20190012, '可口可乐330ML*6', '2022-04-22 00:00:00', '合肥太古娱乐', 7.9, 1000, 12.9, 0, '2022-05-24 15:12:33');
INSERT INTO `tb_product` VALUES (49, 2001, 20190012, '泰国香蕉', '2022-04-26 00:00:00', '淮南天猫超市大润发', 7.9, 990, 15, 10, '2022-05-24 15:13:14');
INSERT INTO `tb_product` VALUES (50, 2001, 20190012, '桃李花式面包', '2022-05-22 00:00:00', '江苏省镇江市', 1.3, 600, 2.5, 0, '2022-05-26 23:17:00');
INSERT INTO `tb_product` VALUES (51, 2009, 20190013, '甘草', '2022-04-29 00:00:00', '安徽省合肥市高新区', 3.6, 600, 12, 0, '2022-05-26 23:17:53');
INSERT INTO `tb_product` VALUES (52, 2005, 20190019, '大话数据结构', '2022-05-04 00:00:00', '上海大雅图书', 37, 588, 89, 12, '2022-05-26 23:19:56');
INSERT INTO `tb_product` VALUES (53, 2005, 20190019, '计算机网络（第七版）', '2022-05-05 00:00:00', '上海大雅图书', 34, 580, 78, 20, '2022-05-26 23:20:35');
INSERT INTO `tb_product` VALUES (54, 2006, 20190019, '飞机航模', '2022-04-27 00:00:00', '武汉玩具厂', 37, 600, 400, 0, '2022-05-27 12:46:46');
INSERT INTO `tb_product` VALUES (55, 2011, 20190017, '鸿星尔克卫衣', '2022-05-10 00:00:00', '福建衣服厂', 39, 100, 128, 0, '2022-05-27 12:47:35');
INSERT INTO `tb_product` VALUES (56, 2009, 20190014, '蓝月亮洗衣液', '2022-03-11 00:00:00', '江苏省镇江市', 37, 599, 128, 1, '2022-05-29 00:08:01');

-- ----------------------------
-- Table structure for tb_provider
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider`;
CREATE TABLE `tb_provider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `provider_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `provider_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20190020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------
INSERT INTO `tb_provider` VALUES (20190012, '安徽合家欢超市供货端', '李南京', '18129373827', '安徽省合肥市蜀山区幸福路112号');
INSERT INTO `tb_provider` VALUES (20190013, '百货超市供货端', '高子腾', '16736352263', '江苏省无锡市');
INSERT INTO `tb_provider` VALUES (20190014, '天猫超市电商线下特供', '李天猫', '19384748392', '浙江省余杭区太子路12号');
INSERT INTO `tb_provider` VALUES (20190016, '安徽淮南超市', '李飞', '18130112698', '安徽省淮南市田家庵区');
INSERT INTO `tb_provider` VALUES (20190017, '南京百大超市', '花木兰', '18130112665', '南京雨花台区66号');
INSERT INTO `tb_provider` VALUES (20190018, '上海桃李面包厂', '李亮', '17364320225', '上海徐家汇');
INSERT INTO `tb_provider` VALUES (20190019, '京东', '刘强', '8274617', '江苏省宿迁市京东电商特供');

-- ----------------------------
-- Table structure for tb_sale
-- ----------------------------
DROP TABLE IF EXISTS `tb_sale`;
CREATE TABLE `tb_sale`  (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售表id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品编号id',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '所属分类id',
  `purchase_price` float NOT NULL DEFAULT 0 COMMENT '进价',
  `sale_price` float NOT NULL DEFAULT 0 COMMENT '售价',
  `sale_count` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `sale_volume` float NULL DEFAULT NULL COMMENT '销售额',
  `net_profit` float NULL DEFAULT NULL COMMENT '净利润',
  `generate_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`sale_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10063 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sale
-- ----------------------------
INSERT INTO `tb_sale` VALUES (10029, 12, '火腿肠', 2001, 2.2, 3, 10, 22, 8, '2022-05-04 23:42:25');
INSERT INTO `tb_sale` VALUES (10030, 12, '火腿肠', 2001, 2.2, 3, 15, 33, 12, '2022-05-05 00:34:26');
INSERT INTO `tb_sale` VALUES (10031, 12, '火腿肠', 2001, 2.2, 3, 15, 33, 12, '2022-05-05 00:34:47');
INSERT INTO `tb_sale` VALUES (10032, 10, '奥利奥Update0428', 2001, 3.3, 6.5, 12, 39.6, 38.4, '2022-05-05 00:35:20');
INSERT INTO `tb_sale` VALUES (10033, 13, '可口可乐(500ML)', 2002, 2.1, 3, 12, 25.2, 10.8, '2022-05-05 00:35:32');
INSERT INTO `tb_sale` VALUES (10034, 15, '金口健牙膏', 2003, 6, 12, 10, 60, 60, '2022-05-05 00:35:52');
INSERT INTO `tb_sale` VALUES (10035, 10, '奥利奥Update0428', 2001, 3.3, 6.5, 10, 33, 32, '2022-05-05 00:51:38');
INSERT INTO `tb_sale` VALUES (10036, 11, '黑人牙膏(薄荷味)', 2003, 3.2, 9.5, 10, 32, 63, '2022-05-05 00:51:41');
INSERT INTO `tb_sale` VALUES (10037, 15, '金口健牙膏', 2003, 6, 12, 10, 60, 60, '2022-05-05 00:51:45');
INSERT INTO `tb_sale` VALUES (10038, 16, '神舟K670E-G6D1笔记本电脑', 2004, 4199, 5799, 10, 41990, 16000, '2022-05-05 00:52:07');
INSERT INTO `tb_sale` VALUES (10039, 22, 'ROMOSS/罗马仕 sense8P', 2007, 60, 119, 10, 600, 590, '2022-05-05 00:52:20');
INSERT INTO `tb_sale` VALUES (10040, 11, '黑人牙膏(薄荷味)', 2001, 3.2, 9.5, 10, 32, 63, '2022-05-05 00:53:04');
INSERT INTO `tb_sale` VALUES (10041, 11, '黑人牙膏(薄荷味)', 2001, 3.2, 9.5, 10, 32, 63, '2022-05-05 00:54:44');
INSERT INTO `tb_sale` VALUES (10042, 11, '黑人牙膏(薄荷味)', 2003, 3.2, 9.5, 10, 32, 63, '2022-05-05 00:56:55');
INSERT INTO `tb_sale` VALUES (10043, 12, '火腿肠', 2001, 2.2, 3, 10, 22, 8, '2022-05-05 00:57:37');
INSERT INTO `tb_sale` VALUES (10044, 11, '黑人牙膏(薄荷味)', 2003, 3.2, 9.5, 10, 32, 63, '2022-05-05 01:19:37');
INSERT INTO `tb_sale` VALUES (10045, 45, '测试商品0509', 2007, 68, 168, 12, 816, 1200, '2022-05-09 22:00:06');
INSERT INTO `tb_sale` VALUES (10046, 20, '黑人牙膏（草莓味）', 2003, 5.2, 12, 12, 62.4, 81.6, '2022-05-10 14:16:30');
INSERT INTO `tb_sale` VALUES (10047, 25, '米家电水壶1A', 2003, 50, 79, 12, 600, 348, '2022-05-10 14:17:00');
INSERT INTO `tb_sale` VALUES (10048, 40, '联想小新air14键盘膜', 2003, 120, 5, 12, 1440, -1380, '2022-05-10 14:17:04');
INSERT INTO `tb_sale` VALUES (10049, 41, '黑人薄荷（牙膏味）', 2003, 6, 12, 12, 72, 72, '2022-05-10 14:17:33');
INSERT INTO `tb_sale` VALUES (10050, 44, '米家保温杯（500ML）黑色', 2003, 36, 99, 12, 432, 756, '2022-05-10 14:17:35');
INSERT INTO `tb_sale` VALUES (10051, 20, '黑人牙膏（草莓味）', 2003, 5.2, 12, 12, 62.4, 81.6, '2022-05-10 23:50:19');
INSERT INTO `tb_sale` VALUES (10052, 25, '米家电水壶1A', 2003, 50, 79, 12, 600, 348, '2022-05-10 23:50:28');
INSERT INTO `tb_sale` VALUES (10053, 27, 'sense 4 mini', 2007, 12, 39, 20, 240, 540, '2022-05-12 21:48:34');
INSERT INTO `tb_sale` VALUES (10054, 45, '测试商品0509', 2007, 68, 168, 20, 1360, 2000, '2022-05-12 21:48:48');
INSERT INTO `tb_sale` VALUES (10055, 47, '四驱车', 2006, 34, 60, 10, 340, 260, '2022-05-17 19:28:59');
INSERT INTO `tb_sale` VALUES (10056, 49, '泰国香蕉', 2001, 7.9, 15, 10, 79, 71, '2022-05-24 15:16:32');
INSERT INTO `tb_sale` VALUES (10057, 52, '大话数据结构', 2005, 37, 89, 12, 444, 624, '2022-05-28 23:57:29');
INSERT INTO `tb_sale` VALUES (10058, 53, '计算机网络（第七版）', 2005, 34, 78, 20, 680, 880, '2022-05-28 23:57:41');
INSERT INTO `tb_sale` VALUES (10059, 37, '红米k30手机壳液态硅胶', 2008, 3.2, 12, 12, 38.4, 105.6, '2022-05-29 00:03:55');
INSERT INTO `tb_sale` VALUES (10060, 22, 'ROMOSS/罗马仕 sense8P', 2007, 60, 119, 3, 180, 177, '2022-05-29 00:06:32');
INSERT INTO `tb_sale` VALUES (10061, 10, '奥利奥Update0428', 2001, 3.3, 6.5, 13, 42.9, 41.6, '2022-05-29 00:07:08');
INSERT INTO `tb_sale` VALUES (10062, 56, '蓝月亮洗衣液', 2009, 37, 128, 1, 37, 91, '2022-05-29 00:08:12');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (16, 'leoist', '5770', 'admin');
INSERT INTO `tb_user` VALUES (18, 'leo', '123456', 'user');

-- ----------------------------
-- Procedure structure for AutoDeleteLogs
-- ----------------------------
DROP PROCEDURE IF EXISTS `AutoDeleteLogs`;
delimiter ;;
CREATE PROCEDURE `AutoDeleteLogs`()
BEGIN

		DELETE FROM log WHERE DATE(create_time) <= DATE(DATE_SUB(NOW(),INTERVAL 3 DAY)) AND (type = 'DEBUG' OR type = 'INFO');

	END
;;
delimiter ;

-- ----------------------------
-- Function structure for currval
-- ----------------------------
DROP FUNCTION IF EXISTS `currval`;
delimiter ;;
CREATE FUNCTION `currval`(doctor_id VARCHAR(6))
 RETURNS int(11)
  READS SQL DATA 
  DETERMINISTIC
BEGIN

DECLARE VALUE INTEGER;

SET VALUE = 10001;

SELECT current_value INTO VALUE FROM doctor WHERE NAME = doctor_id;

RETURN VALUE;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for nextval
-- ----------------------------
DROP FUNCTION IF EXISTS `nextval`;
delimiter ;;
CREATE FUNCTION `nextval`(doctor_id VARCHAR(6))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

UPDATE doctor SET current_value = current_value + increment WHERE Name = doctor_id;

RETURN currval(seq_name);

END
;;
delimiter ;

-- ----------------------------
-- Event structure for event_AutoDeleteLogs
-- ----------------------------
DROP EVENT IF EXISTS `event_AutoDeleteLogs`;
delimiter ;;
CREATE EVENT `event_AutoDeleteLogs`
ON SCHEDULE
EVERY '1' DAY STARTS '2019-04-25 00:00:00'
ON COMPLETION PRESERVE
DO CALL AutoDeleteLogs()
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
