/*
Navicat MySQL Data Transfer

Source Server         : 我的连接
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : musicload

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-04-06 18:51:46
*/

SET FOREIGN_KEY_CHECKS=0;

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
