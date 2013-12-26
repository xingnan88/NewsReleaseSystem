/*
Navicat MySQL Data Transfer

Source Server         : bei
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-09-22 20:46:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '黄煜楠', 'c0f1b6a831c399e2', 'wuqinqin@qq.com', '你的名字', '吴琴琴', 'manager', '2011-09-15');
INSERT INTO `user` VALUES ('2', 'a', 'c0f1b6a831c399e2', 'a', null, null, 'manager', null);
INSERT INTO `user` VALUES ('71', '张三', 'ac59075b964b0715', '1231@qq.com', '', '', 'user', '2011-09-15');
INSERT INTO `user` VALUES ('72', '丽丽', 'c0f1b6a831c399e2', '', '', '', 'user', '2011-09-15');
INSERT INTO `user` VALUES ('73', 'v', 'c0f1b6a831c399e2', 'a', 'a', 'a', 'user', '2011-09-15');
INSERT INTO `user` VALUES ('74', 'wuqinqin', 'c0f1b6a831c399e2', 'adasfds@qq.com', '', '', 'editor', '2011-09-15');
INSERT INTO `user` VALUES ('75', '活力', 'c0f1b6a831c399e2', '13212@qq.com', '', '', 'editor', '2011-09-15');
