/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 09/06/2019 21:07:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `bid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机品牌ID',
  `bname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机品牌',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'Apple');
INSERT INTO `brand` VALUES ('2', '华为(honor)');
INSERT INTO `brand` VALUES ('3', 'OPPO');
INSERT INTO `brand` VALUES ('4', 'Xiaomi/小米');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cid` int(5) NOT NULL AUTO_INCREMENT COMMENT '一个cid代表购物车中的一行数据',
  `pid` int(5) NULL DEFAULT NULL COMMENT '商品的ID',
  `cimage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `cprice` double(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `number` int(11) NULL DEFAULT NULL COMMENT '商品的数量',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '该商品总价',
  `uid` int(5) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(5) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `ordername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人名字',
  `ordertel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `orderaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `ordertotal` double(50, 2) NULL DEFAULT NULL COMMENT '该订单总价',
  `uid` int(5) NULL DEFAULT NULL COMMENT '订单用户',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `订单`(`uid`) USING BTREE,
  CONSTRAINT `订单` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品的ID',
  `pname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的名称',
  `pimage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的图片路径',
  `price` double(20, 2) NULL DEFAULT NULL COMMENT '商品的价格',
  `pic_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情的介绍图1',
  `pic_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情的介绍图2',
  `pic_3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情的介绍图3',
  `pic_4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情的介绍图4',
  `bid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机品牌id',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `product_ibfk_1`(`bid`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `brand` (`bid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Apple iPhone 8 64GB 深空灰 移动联通电信4G手机', 'img/a-11.jpg', 4588.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('10', 'Apple iPhone 8 Plus 64GB 深空灰 移动联通4G手机', 'img/a-13.jpg', 5492.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('11', 'xiaomi/小米 小米8青春版 4GB+64GB 深空灰 移动联通电信4G全网通手机 AI双摄', 'img/m-13.jpg', 1399.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('12', '华为 nova3 全面屏高清四摄 6GB+128GB 蓝楹紫色', 'img/h-11.jpg', 699.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-3.jpg', '2');
INSERT INTO `product` VALUES ('13', 'Xiaomi/小米 小米8 金色 6GB内存 64GB 移动联通电信4G全网通手机', 'img/m-14.jpg', 2499.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('14', 'Xiaomi/小米 小米Mix2S 8GB+256GB 白色陶瓷版 移动联通电信4G手机', 'img/m-19.jpg', 3399.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('15', '华为/荣耀(honor）9i 全网通 4GB+128GB 幻夜黑 智能手机', 'img/h-17.jpg', 1599.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('16', 'OPPOA5幻镜蓝4GB+64GB全网通移动电信联通4G OPPO新品全面屏手机6.2英寸', 'img/o-14.jpg', 1499.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('17', 'Xiaomi/小米红米6A 2GB+16GB流沙金移动联通电信4G全网通手机', 'img/m-12.jpg', 569.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('18', 'Xiaomi/小米 小米8SE 6GB+128GB 金色 移动联通电信4G全网通手机', 'img/m-16.jpg', 1999.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('19', '荣耀8X 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G', 'img/h-15.jpg', 1399.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('2', '【领券立减】Apple iPhone XR 128GB 黑色 移动联通电信', 'img/a-12.jpg', 6999.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('20', '华为nova2s 6GB+64GB 浅艾蓝移动联通电信4G手机', 'img/h-14.jpg', 1619.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('21', '【豪礼相赠+碎屏险】OPPO A1 3G+32G大内存全面屏人脸识别拍照 4G手机', 'img/o-15.jpg', 999.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('22', 'Apple iPhone X 64GB 银色 移动联通电信4G手机', 'img/a-14.jpg', 7077.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('23', '华为/荣耀畅玩7A 全面屏手机 全网通标配版 2GB+32GB 极光蓝', 'img/h-16.jpg', 699.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('24', 'OPPO Find X 8GB+128GB 冰珀蓝曲面全景屏手机 隐藏式摄像头 、骁龙845', 'img/o-13.jpg', 2999.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('25', '华为/荣耀畅玩7A 全面屏手机 全网通标配版 2GB+32GB 极光蓝', 'img/h-12.jpg', 1599.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-3.jpg', '2');
INSERT INTO `product` VALUES ('26', 'OPPO A7x星空紫4G+128G 6.3英寸水滴屏 紫色渐变 后置指纹识别', 'img/o-16.jpg', 1999.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('27', 'Xiaomi/小米 小米Max3 4GB+64GB 曜石黑 移动联通电信4G全网通手机', 'img/m-17.jpg', 1599.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('28', 'Apple iPhone X 64GB 深空灰 移动联通电信4G手机', 'img/a-15.jpg', 6488.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('29', 'OPPO K1梵星蓝6G+64G 6.4英寸 屏幕指纹识别 双卡双待', 'img/o-17.jpg', 1799.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('3', '【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G', 'img/m-11.jpg', 3028.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('30', 'iPhone 6s Plus 128GB 玫瑰金 A1699移动4G联通4G电信4G全网通手机', 'img/a-16.jpg', 3068.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('31', 'Xiaomi/小米 小米Mix3 6GB+128GB 黑色 移动联通电信4G手机 全面屏', 'img/m-18.jpg', 3299.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('32', 'OPPO【R15x冰萃银】6GB+128GB光感屏幕指纹手机、水滴屏、前置2500万', 'img/o-18.jpg', 1999.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('33', 'Xiaomi/小米 小米Mix2S 8GB+256GB 白色陶瓷版 移动联通电信4G手机', 'img/m-19.jpg', 3399.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('34', 'Apple iPhone XR 64GB 白色 移动联通电信4G手机 双卡双待', 'img/a-17.jpg', 6499.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('35', '苹果(Apple) iPhone X 64GB 银色A1865 移动联通电信全网通4G手机', 'img/a-13.jpg', 6008.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('36', 'Xiaomi/小米 小米Play 4GB+64GB 黑色 移动联通电信4G全网通手机', 'img/m-12.jpg', 1099.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('37', '华为 nova3 全面屏高清四摄 6GB+128GB 蓝楹紫色', 'img/h-13.jpg', 2348.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('38', 'Apple iPhone X 64GB 深空灰 移动联通电信4G手机', 'img/a-14.jpg', 6488.00, '/img/a-1.jpg', '/img/a-2.jpg', '/img/a-3.jpg', '/img/a-4.jpg', '1');
INSERT INTO `product` VALUES ('39', 'OPPO R17手机K1 A7同款水滴屏【旗舰机】6G+128G大运存 水滴屏 幻色渐变', 'img/o-11.jpg', 2799.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('4', '华为 nova3 全面屏高清四摄 6GB+128GB 蓝楹紫色', 'img/h-13.jpg', 2348.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('40', 'Xiaomi/小米 小米Play 4GB+64GB 黑色 移动联通电信4G全网通手机', 'img/m-12.jpg', 1099.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('5', 'OPPO R17手机K1 A7同款水滴屏【旗舰机】6G+128G大运存 水滴屏 幻色渐变', 'img/o-12.jpg', 2799.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('6', '荣耀10青春版 幻彩渐变 2400万AI自拍 6.21英寸90%屏占比', 'img/h-15.jpg', 1399.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-4.jpg', '2');
INSERT INTO `product` VALUES ('7', 'OPPO Find X 8GB+128GB 冰珀蓝曲面全景屏手机 隐藏式摄像头 、骁龙845', 'img/o-13.jpg', 4999.00, '/img/o-2.jpg', '/img/o-3.jpg', '/img/o-4.jpg', '/img/o-5.jpg', '3');
INSERT INTO `product` VALUES ('8', 'Xiaomi/小米 小米Play 4GB+64GB 黑色 移动联通电信4G全网通手机', 'img/m-12.jpg', 1099.00, '/img/m-1.jpg', '/img/m-2.jpg', '/img/m-3.jpg', '/img/m-4.jpg', '4');
INSERT INTO `product` VALUES ('9', '华为/荣耀10青春版 幻彩渐变 2400万AI自拍 6.21英寸90%屏占比', 'img/h-13.jpg', 1619.00, '/img/h-1.jpg', '/img/h-2.jpg', '/img/h-3.jpg', '/img/h-3.jpg', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户爱好',
  `age` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户年龄',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '11222330', '123456789@qq.com', '123456', 'admin', '男', '篮球', '21', '广技师');
INSERT INTO `user` VALUES (7, '1576114359', '123456789@qq.com', '123456', 'kevin', '女', '篮球', '20', '广技师');

SET FOREIGN_KEY_CHECKS = 1;
