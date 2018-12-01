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

 Date: 01/12/2018 11:31:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1231', '1321');
INSERT INTO `login` VALUES ('1231', '1321');
INSERT INTO `login` VALUES ('233', '111');
INSERT INTO `login` VALUES ('1111', '2222');
INSERT INTO `login` VALUES ('qqqqw', '55555');
INSERT INTO `login` VALUES ('1111', '1321');
INSERT INTO `login` VALUES ('112', '112');
INSERT INTO `login` VALUES ('666', '666');

-- ----------------------------
-- Table structure for slogin
-- ----------------------------
DROP TABLE IF EXISTS `slogin`;
CREATE TABLE `slogin`  (
  `Susername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Spassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slogin
-- ----------------------------
INSERT INTO `slogin` VALUES ('q', '123');
INSERT INTO `slogin` VALUES ('qqq', '111');
INSERT INTO `slogin` VALUES ('1111', '1321');

-- ----------------------------
-- Table structure for stulist
-- ----------------------------
DROP TABLE IF EXISTS `stulist`;
CREATE TABLE `stulist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `StudentSex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `StudentAge` int(255) NULL DEFAULT NULL,
  `CourseTime` datetime(0) NULL DEFAULT NULL,
  `CourseTeacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CourseText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2018007 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stulist
-- ----------------------------
INSERT INTO `stulist` VALUES (2018001, '啊啊啊', '男', 8, '2018-11-22 17:06:18', '欧克', '王企鹅', '已上课');
INSERT INTO `stulist` VALUES (2018002, '哈哈哈', '女', 11, '2018-11-16 00:00:00', 'iiii', '驱蚊器', '已上课');
INSERT INTO `stulist` VALUES (2018003, '哦哦哦', '男', 6, '2018-11-30 00:00:00', '啧啧啧', '人人人', '已上课');
INSERT INTO `stulist` VALUES (2018004, 'qqqq', '男', 11, '2018-11-16 00:00:00', 'rrrr', 'yyyy', '已上课');
INSERT INTO `stulist` VALUES (2018005, 'www', '男', 5, '2018-11-29 00:00:00', '品牌片刻', '匹配', '已上课');
INSERT INTO `stulist` VALUES (2018006, 'の去问问', '女', 11, '2018-11-16 00:00:00', '啊啊啊', '高富帅发生过', '已上课');

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
