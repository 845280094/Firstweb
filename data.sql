/*
 Navicat MySQL Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 11/05/2024 01:22:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for earthquakedata
-- ----------------------------
DROP TABLE IF EXISTS `earthquakedata`;
CREATE TABLE `earthquakedata`  (
  `EventID` int NULL DEFAULT NULL COMMENT '地震事件ID',
  `Level` int NULL DEFAULT NULL COMMENT '震级',
  `Position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '位置',
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of earthquakedata
-- ----------------------------

-- ----------------------------
-- Table structure for historyevent
-- ----------------------------
DROP TABLE IF EXISTS `historyevent`;
CREATE TABLE `historyevent`  (
  `EventID` int NULL DEFAULT NULL COMMENT '地震事件ID',
  `Level` int NULL DEFAULT NULL COMMENT '震级',
  `Position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '位置',
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historyevent
-- ----------------------------

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`  (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT '主键，自动增长',
  `Username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `Userpwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `Emailbox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `UserID` int NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinformation
-- ----------------------------

-- ----------------------------
-- Table structure for warningrecord
-- ----------------------------
DROP TABLE IF EXISTS `warningrecord`;
CREATE TABLE `warningrecord`  (
  `UserID` int NULL DEFAULT NULL COMMENT '用户ID',
  `EventID` int NULL DEFAULT NULL COMMENT '地震事件ID',
  `SendTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发送时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warningrecord
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
