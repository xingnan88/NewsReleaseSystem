/*
Navicat MySQL Data Transfer

Source Server         : bei
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2011-07-08 21:49:38
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
  `userType` varchar(50) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', '张三', 'a', 'assdfs@qq.om', 'dsf ', 'dd', 'user', '2011-07-03');
INSERT INTO `user` VALUES ('11', '李四', 'v', 'dfdddfs@qq.om', 'dsf ', 'dd', 'user', '2011-07-03');
INSERT INTO `user` VALUES ('13', 'huangyunan', 'h', null, null, null, 'editor', '2011-07-04');
INSERT INTO `user` VALUES ('15', 'dsa', 'dfsa', 'dfs', 'dfs', 'dfs', 'user', '2011-07-04');
INSERT INTO `user` VALUES ('16', 'dfs', 'dfs', 'd', 'd', 'd', 'user', '2011-07-04');
INSERT INTO `user` VALUES ('18', 'dfsdd', 'dfsdd', 'dfs', 'fds', 'fdsfs', 'user', '2011-07-04');
INSERT INTO `user` VALUES ('21', 'j', 'j', 'j', 'j', 'j', 'user', '2011-07-04');
INSERT INTO `user` VALUES ('22', 'adsfa', 'dfs', 'dfs', 'fsd', 'fds', 'user', '2011-07-05');
INSERT INTO `user` VALUES ('23', 'adsfa', 'dfs', 'dfs', 'fsd', 'fds', 'user', '2011-07-05');
INSERT INTO `user` VALUES ('24', 'a', 'b', 'b', 'b', 'b', 'user', '2011-07-05');
INSERT INTO `user` VALUES ('25', 'c', 'c', 'c', 'c', 'c', 'user', '2011-07-05');
INSERT INTO `user` VALUES ('26', 'g', 'g', 'g', 'g', 'g', 'user', '2011-07-05');
INSERT INTO `user` VALUES ('27', 'd', 'd', 'f', 'f', 'f', 'user', '2011-07-08');
INSERT INTO `user` VALUES ('28', 'd', 'd', 'f', 'f', 'f', 'user', '2011-07-08');
INSERT INTO `user` VALUES ('29', '发大水', 'd', 'd', 'd', 'd', 'user', '2011-07-08');
INSERT INTO `user` VALUES ('30', '发大水', 'd', 'd', 'd', 'd', 'user', '2011-07-08');
INSERT INTO `user` VALUES ('31', '发大水', 'd', 'd', 'd', 'd', 'user', '2011-07-08');
INSERT INTO `user` VALUES ('37', '大师', 'ds', 'a', 'a', 'a', 'editor', '2011-07-08');
INSERT INTO `user` VALUES ('39', 'fdsa', 'ds ', 'dsf', 'fds', 'dfs', 'editor', '2011-07-08');
INSERT INTO `user` VALUES ('40', '黄煜楠', 'a', 'a', 'a', 'a', 'manager', '2011-07-08');
INSERT INTO `user` VALUES ('41', '吴琴琴', 'a', 'a', 'a', 'a', 'manager', '2011-07-08');
