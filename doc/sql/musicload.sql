/*
Navicat MySQL Data Transfer

Source Server         : 我的连接
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : musicload

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-04-12 16:40:03
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
-- Records of album
-- ----------------------------

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
-- Records of form
-- ----------------------------

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(255) DEFAULT NULL,
  `lyrics` varchar(0) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `soar_clicks` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `newMusic_clicks` int(11) DEFAULT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '趁早', null, null, '10001', null, '22', '04:24', null, '55');
INSERT INTO `music` VALUES ('2', '解脱', null, null, '10001', null, '111', '04:55', null, '22');
INSERT INTO `music` VALUES ('3', '星星点灯', null, null, '10002', null, '31231', '04:22', null, '66');
INSERT INTO `music` VALUES ('4', '天天想你', null, null, '10003', null, '32', '04：32', null, '54');
INSERT INTO `music` VALUES ('5', '七里香', null, null, '10101', null, '32', null, null, '545');
INSERT INTO `music` VALUES ('6', '稻香', null, null, '10101', null, '534', null, null, '53');
INSERT INTO `music` VALUES ('7', '撕夜', null, null, '10203', null, '35', null, null, '32');
INSERT INTO `music` VALUES ('8', '小说', null, null, '10203', null, '23', null, null, '42');
INSERT INTO `music` VALUES ('9', '进化论', null, null, '10102', null, '64', null, null, '53');
INSERT INTO `music` VALUES ('10', '他说', null, null, '10102', null, '54', null, null, '645');
INSERT INTO `music` VALUES ('11', '波间带', null, null, '10102', null, '23', null, null, '745');
INSERT INTO `music` VALUES ('12', '三十五里路', null, null, '10004', null, '86', null, null, '324');
INSERT INTO `music` VALUES ('13', '天路', null, null, '10103', null, '43', null, null, '754');
INSERT INTO `music` VALUES ('14', '晴天', null, null, '10101', null, '42', null, null, '43');
INSERT INTO `music` VALUES ('15', '三生三世', null, null, '10104', null, '23', null, null, '645');
INSERT INTO `music` VALUES ('16', '曹操', null, null, '10102', null, '645', null, null, '654');
INSERT INTO `music` VALUES ('17', '路太弯', null, null, '10105', null, '4242', null, null, '53');

-- ----------------------------
-- Table structure for rankinglist
-- ----------------------------
DROP TABLE IF EXISTS `rankinglist`;
CREATE TABLE `rankinglist` (
  `ranking_list` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rankinglist
-- ----------------------------
INSERT INTO `rankinglist` VALUES ('乐听飙升榜', '每日更新');
INSERT INTO `rankinglist` VALUES ('乐听新歌榜', '每日更新');
INSERT INTO `rankinglist` VALUES ('乐听原创歌曲榜', '每周四更新');
INSERT INTO `rankinglist` VALUES ('乐听热歌榜', '每周四更新');
INSERT INTO `rankinglist` VALUES ('中国TOP排行榜(港台)', '每周一更新');
INSERT INTO `rankinglist` VALUES ('中国TOP排行榜(内地)', '每周一更新');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('10001', '张惠妹');
INSERT INTO `singer` VALUES ('10002', '郑智化');
INSERT INTO `singer` VALUES ('10003', '陈绮贞');
INSERT INTO `singer` VALUES ('10004', '包娜娜');
INSERT INTO `singer` VALUES ('10101', '周杰伦');
INSERT INTO `singer` VALUES ('10102', '林俊杰');
INSERT INTO `singer` VALUES ('10103', '韩红');
INSERT INTO `singer` VALUES ('10104', '张杰');
INSERT INTO `singer` VALUES ('10105', '潘玮柏');
INSERT INTO `singer` VALUES ('10203', '阿杜');

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
