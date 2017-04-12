/*
Navicat MySQL Data Transfer

Source Server         : 我的连接
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : musicload

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-04-06 19:59:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `album_id` int(255) NOT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `form_image` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `misic_id` int(11) NOT NULL AUTO_INCREMENT,
  `misic_link_address` varchar(255) DEFAULT NULL,
  `music_name` varchar(255) DEFAULT NULL,
  `lyrics` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`misic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_music
-- ----------------------------
DROP TABLE IF EXISTS `user_music`;
CREATE TABLE `user_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_id` int(11) DEFAULT NULL,
  `user_name` varchar(16) DEFAULT NULL,
  `music_name` varchar(255) DEFAULT NULL,
  `singer_name` varchar(255) DEFAULT NULL,
  `download_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_music
-- ----------------------------
INSERT INTO `user_music` VALUES ('1', '1', 'tom', '晴天', '周杰伦', '2017-04-12 16:14:04');
INSERT INTO `user_music` VALUES ('2', '2', 'tom', '床边故事', '周杰伦', '2017-04-12 16:14:10');
INSERT INTO `user_music` VALUES ('3', '3', 'tom', '说走就走', '周杰伦', '2017-04-12 16:14:14');
INSERT INTO `user_music` VALUES ('4', '4', 'tom', '一点点', '周杰伦', '2017-04-12 16:14:17');
INSERT INTO `user_music` VALUES ('5', '5', 'tom', '前世情人', '周杰伦', '2017-04-12 16:14:21');
INSERT INTO `user_music` VALUES ('6', '6', 'tom', '英雄', '周杰伦', '2017-04-12 16:14:24');
INSERT INTO `user_music` VALUES ('7', '7', 'tom', '前世情人', '周杰伦', '2017-04-12 16:14:28');
INSERT INTO `user_music` VALUES ('8', '8', 'tom', '不该', '周杰伦', '2017-04-12 16:14:31');
INSERT INTO `user_music` VALUES ('9', '9', 'tom', '土耳其冰淇淋', '周杰伦', '2017-04-12 16:14:34');
INSERT INTO `user_music` VALUES ('10', '10', 'tom', '告白气球', '周杰伦', '2017-04-12 16:14:38');
INSERT INTO `user_music` VALUES ('11', '11', 'tom', '爱情废柴', '周杰伦', '2017-04-12 16:14:42');
