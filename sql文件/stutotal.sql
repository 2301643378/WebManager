/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : studentdateinformation

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 01/12/2018 11:32:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stutotal
-- ----------------------------
DROP TABLE IF EXISTS `stutotal`;
CREATE TABLE `stutotal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StTime` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2018007 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stutotal
-- ----------------------------
INSERT INTO `stutotal` VALUES (2018001, 32);
INSERT INTO `stutotal` VALUES (2018002, 40);
INSERT INTO `stutotal` VALUES (2018003, 42);
INSERT INTO `stutotal` VALUES (2018004, 40);
INSERT INTO `stutotal` VALUES (2018005, 42);
INSERT INTO `stutotal` VALUES (2018006, 40);

-- ----------------------------
-- Table structure for teatotal
-- ----------------------------
DROP TABLE IF EXISTS `teatotal`;
CREATE TABLE `teatotal`  (
  `TeaID` int(11) NOT NULL AUTO_INCREMENT,
  `TeaName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TeaTime` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`TeaID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1802 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teatotal
-- ----------------------------
INSERT INTO `teatotal` VALUES (1801, '哈啊哈', 16);

SET FOREIGN_KEY_CHECKS = 1;
