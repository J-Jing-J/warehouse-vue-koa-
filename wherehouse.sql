/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : wherehouse

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 10/02/2021 00:32:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods_entity
-- ----------------------------
DROP TABLE IF EXISTS `goods_entity`;
CREATE TABLE `goods_entity` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `goods_number` varchar(30) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `goods_quantities` int DEFAULT NULL,
  `goods_size` varchar(10) DEFAULT NULL,
  `buying_way` tinyint DEFAULT NULL,
  `buying_date` datetime DEFAULT NULL,
  `buying_price` decimal(10,2) DEFAULT NULL,
  `is_create` datetime DEFAULT NULL,
  `is_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_entity
-- ----------------------------
BEGIN;
INSERT INTO `goods_entity` VALUES (1, '8888-99', 1, 3, '41', 2, '2020-07-25 22:50:00', 1399.00, '2020-07-25 22:50:07', '2020-08-08 16:53:28', 0);
INSERT INTO `goods_entity` VALUES (2, '7777-00', 1, 2, '41', 2, '2020-08-02 12:10:21', 1299.00, '2020-08-02 12:10:30', '2020-08-08 16:53:27', 0);
INSERT INTO `goods_entity` VALUES (3, '4443', 2, 3, '41', 2, '2020-08-02 12:14:34', 499.00, '2020-08-02 12:14:41', '2020-08-08 16:53:26', 0);
INSERT INTO `goods_entity` VALUES (4, '3332-33', 1, 2, '42', 2, '2020-08-08 17:26:41', 1299.00, '2020-08-08 17:26:41', '2020-08-08 17:26:41', 0);
INSERT INTO `goods_entity` VALUES (11, '177-909', 1, 1, '42', 2, '2020-08-08 18:22:15', 1799.00, '2020-08-08 18:22:15', '2020-08-08 18:22:15', 0);
INSERT INTO `goods_entity` VALUES (12, '8888-99', 1, 1, '36.0', 3, '2021-01-27 18:29:41', 1110.00, '2021-01-27 18:29:41', '2021-01-27 18:29:41', 0);
INSERT INTO `goods_entity` VALUES (13, '8888-99', 1, 2, '37.5', 1, '2021-01-28 18:52:02', 0.00, '2021-01-28 18:52:02', '2021-01-28 18:52:02', 0);
INSERT INTO `goods_entity` VALUES (14, '575441-105', 1, 1, '36.0', 1, '2021-02-03 15:59:19', 2427.00, '2021-02-03 15:59:19', '2021-02-03 15:59:19', 0);
INSERT INTO `goods_entity` VALUES (15, 'DD2224-200', 1, 1, '38', 0, '2021-02-05 15:46:40', 999.00, '2021-02-05 15:46:40', '2021-02-05 15:46:40', 0);
COMMIT;

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名',
  `goods_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品货号',
  `goods_brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品品牌',
  `release_date` date DEFAULT NULL COMMENT '发售日期',
  `release_price` decimal(10,2) DEFAULT NULL COMMENT '发售价',
  `uid` int NOT NULL COMMENT '用户id',
  `is_create` datetime NOT NULL,
  `is_update` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `goods_type` int NOT NULL DEFAULT '1' COMMENT '商品类别，1鞋，2衣服，3其他',
  `goods_img_url` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_info` VALUES (1, 'test1', '8888-99', 'nike', '2020-07-24', 1399.00, 1, '2020-07-25 22:47:58', '2021-02-03 11:21:15', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (2, 't2', '7777-00', 'nike', '2020-08-02', 1299.00, 1, '2020-08-02 12:11:07', '2021-02-03 11:21:14', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (3, 'tests', '7833-22', 'nike', '2020-07-23', 1299.00, 1, '2020-08-08 14:33:01', '2021-02-03 11:21:13', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (4, 'tests', '7833-22', 'nike', '2020-07-23', 1299.00, 2, '2020-08-08 15:14:11', '2021-02-03 11:21:13', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (5, 'test', '177-909', 'jordan', '2020-08-08', 1299.00, 1, '2020-08-08 18:22:15', '2021-02-03 11:21:12', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (6, 'apitest', '1999', '0', '2021-01-24', 1012.00, 1, '2021-01-24 16:45:43', '2021-02-03 11:21:11', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (7, 'test1222', 'testt3322', '0', '2021-01-24', 2222.00, 1, '2021-01-24 17:29:38', '2021-02-03 11:21:10', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (8, '再插入一条', '2121211', '0', '2021-01-24', 1447.00, 1, '2021-01-24 17:32:35', '2021-02-03 11:21:09', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (9, '350', '332221', '1', '2021-01-25', 1099.00, 1, '2021-01-25 14:25:52', '2021-02-03 11:21:07', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (10, 'Air Jordan 1 换帮', 'CW6576-500', '0', '2021-02-01', 1399.00, 1, '2021-02-03 11:14:21', '2021-02-03 11:14:21', 0, 1, 'http://localhost:3787/uploads/upload_b3f24171d649a132b5c2e2e566a29457.jpeg');
INSERT INTO `goods_info` VALUES (11, 'adidas original YEEZY 380 满天星 蜜桃粉', 'GY2649', '1', '2021-01-16', 1999.00, 1, '2021-02-03 14:37:32', '2021-02-03 14:37:32', 0, 1, 'http://localhost:3787/uploads/upload_7c061715953175e40ca5e1e3d07d9dd4.jpg');
INSERT INTO `goods_info` VALUES (12, 'Air Jordan 1 摩卡', '575441-105', '0', '2020-11-20', 899.00, 1, '2021-02-03 15:57:04', '2021-02-03 15:57:04', 0, 1, 'http://localhost:3787/uploads/upload_ee27c5e4ed45f5ff984a3d2e050a45a6.jpeg');
INSERT INTO `goods_info` VALUES (15, 'Air Jordan 1 Mid 奶茶 女款', 'DD2224-200', 'Nike', '2021-02-01', 999.00, 1, '2021-02-05 15:45:16', '2021-02-05 15:45:16', 0, 1, 'http://localhost:3787/uploads/upload_dbb06e3873b03b96487303ce166392d8.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `eid` int NOT NULL,
  `g_number` varchar(50) DEFAULT NULL,
  `buying_price` decimal(10,2) NOT NULL,
  `buying_date` datetime DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `selling_date` datetime DEFAULT NULL,
  `selling_size` varchar(10) DEFAULT NULL,
  `profit_loss` decimal(10,2) DEFAULT NULL,
  `selling_way` varchar(50) DEFAULT NULL,
  `delivery_number` varchar(50) DEFAULT NULL,
  `is_create` datetime DEFAULT NULL,
  `is_update` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tran_status` tinyint NOT NULL COMMENT '交易状态：1：已付款 2：已发货 3：交易成功 4：交易失败',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of transaction
-- ----------------------------
BEGIN;
INSERT INTO `transaction` VALUES (1, 1, 11, '177-909', 1799.00, '2020-08-08 18:22:15', 1300.00, '2020-08-16 22:50:33', '42', -499.00, '2', 'SF1078787777', '2020-08-16 22:50:33', '2020-08-16 22:50:33', 2);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `is_create` datetime NOT NULL,
  `is_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态： 1：已删除 0：未删除',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, '110', '110', 'test', '112@qq.com', '2020-07-07 11:56:48', '2020-07-07 11:56:52', 0);
INSERT INTO `user_info` VALUES (2, '11234', '119', 'test2', NULL, '2020-07-07 11:56:56', '2020-07-07 11:56:58', 0);
INSERT INTO `user_info` VALUES (3, '117', '6', NULL, NULL, '2020-07-07 11:57:01', '2020-07-07 11:57:02', 0);
INSERT INTO `user_info` VALUES (8, '1178755', '6', 'testreg', '17272@qq.com', '2020-07-07 12:18:42', '2020-07-07 12:18:42', 0);
INSERT INTO `user_info` VALUES (9, '808080', '34343', 'test', '776767@qq.com', '2020-08-06 22:56:49', '2020-08-06 22:56:49', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
