/*
Navicat MySQL Data Transfer

Source Server         : bei
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2011-07-02 21:06:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qq', 'www', 'we', 'rewr', 'ewr');
INSERT INTO `user` VALUES ('2', 'dafd', 'dasf', 'dafs', 'dfas', 'dfas');
INSERT INTO `user` VALUES ('3', 'mnkjuh', 'tt', 'tt', 'tt', 'tt');
INSERT INTO `user` VALUES ('4', '', '', '', '', '');
