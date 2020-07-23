/*
 Navicat Premium Data Transfer

 Source Server         : shuhan
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : springdb

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 23/07/2020 20:12:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (4, 'ffff', 11);
INSERT INTO `student` VALUES (5, 'ff', 22);
INSERT INTO `student` VALUES (6, 'haolong', 22);
INSERT INTO `student` VALUES (10, 'cc', 33);
INSERT INTO `student` VALUES (11, 'peiq', 22);
INSERT INTO `student` VALUES (12, 'peiq', 22);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456');
INSERT INTO `user` VALUES (2, 'laoba', 'laoba');
INSERT INTO `user` VALUES (3, 'adad', 'adad');
INSERT INTO `user` VALUES (4, 'adad', 'adad');
INSERT INTO `user` VALUES (5, 'lili', 'lili');
INSERT INTO `user` VALUES (6, 'admin', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
