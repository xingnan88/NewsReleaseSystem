/*
Navicat MySQL Data Transfer

Source Server         : bei
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-09-22 20:46:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `news_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('1', '今日焦点');
INSERT INTO `news_type` VALUES ('2', '国内新闻');
INSERT INTO `news_type` VALUES ('3', '国际新闻');
INSERT INTO `news_type` VALUES ('4', '体育');
INSERT INTO `news_type` VALUES ('5', '军事');
INSERT INTO `news_type` VALUES ('6', '教育');
INSERT INTO `news_type` VALUES ('7', '娱乐');
INSERT INTO `news_type` VALUES ('8', '社会');
