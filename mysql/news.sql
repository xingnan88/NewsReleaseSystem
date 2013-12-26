/*
Navicat MySQL Data Transfer

Source Server         : huangyunan
Source Server Version : 50149
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50149
File Encoding         : 65001

Date: 2011-05-26 09:40:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `news_title`
-- ----------------------------
DROP TABLE IF EXISTS `news_title`;
CREATE TABLE `news_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(9000) DEFAULT NULL,
  `pubtime` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_title
-- ----------------------------
INSERT INTO `news_title` VALUES ('1', '甘肃舟曲倒塌房屋重建最迟明年6月完成  ', '　黄金救援期内拉网搜救\r\n\r\n　　针对可能的幸存者，数千名来自部队、邻近省份和地区的官兵及其他救援力量，不抛弃、不放弃，即使只有一丝希望，也在尽\r\r\n百倍努力拉网搜救。\r\n\r\n　　国家地震救援队由北京军区某工兵团70名官兵和国家地震局10名专家组成，共携带12条搜索犬和200多件生命探测仪等救援装备\r\r\n，于9日晚10时到达舟曲县城。主要任务是搜救幸存者。\r\n\r\n　　另据武警总部作战指挥中心透露，目前武警部队在舟曲抢险救灾一线总兵力已增至2500人，警种涉及武警总队、机动师和森林\r\r\n、水电、交通等部队。\r\n\r\n　　大量救灾物资抵达灾区\r\n\r\n　　民政部救灾司透露，截至10日16时，民政部从中央救灾物资储备库调运的物资中已有5000张折叠床和5000条睡袋运抵舟曲灾区\r\r\n，其余5000顶12平方米单帐篷、200顶36平方米帐篷、2万件棉大衣、3000张折叠床预计10日夜运抵。\r\n\r\n　　目前，民政部、甘肃省各级民政部门和各地、各部门共组织调运3万顶帐篷、10万床棉被、10万件棉大衣、5000条睡袋、8000张\r\r\n折叠床、18万件方便食品、1万斤面粉、85万件矿泉水、1万包点心、4.6万个大饼、2100双雨靴、2000双手套、500台发电机、10万\r\r\n支蜡烛、1万个手电筒(带电池)。\r\n\r\n　　■动态\r\n\r\n　　暂无重大传染病疫情报告\r\n\r\n　　昨天，卫生部新闻办透露，目前没有重大传染病疫情和突发公共卫生事件报告。\r\n\r\n　　截至9日17时，舟曲县医院累计收治伤员117名，其中重症伤员29人(含危重伤员4人)，重症伤员的伤情以挤压伤、多发性骨折和\r\r\n内脏损伤为主。卫生部新闻发言人邓海华称，为尽可能减少死亡和伤残，卫生部门已在灾区组建了重症伤员救治专家组，争取在48\r\r\n小时内对重症伤员进行必要的手术治疗。\r\n\r\n　　因为气温过高等原因，灾区消杀灭防疫工作也开始面临更大挑战。截至10日17时，已有15支卫生防疫队，184名防疫队员，携带\r\r\n药品、设备进入灾区。\r\n\r\n　　灾区三维动态地图公布\r\n\r\n　　10日，国家测绘局透露，已紧急制作完成舟曲特大泥石流灾区三维地理信息系统和一批灾前、灾后航空摄影影像图等，供抢险\r\r\n救灾使用并向社会公布。\r\n\r\n　　通过紧急研制开发的舟曲灾区三维地理信息系统，抢险救灾人员可以清楚了解灾害损失的细节，严重程度及空间分布，从而进\r\r\n行科学决策，确定优先救治的区域；也能够了解灾区的道路、地形等信息，确定如何安排救援路线，布置受灾群众临时安置点等等\r\r\n。\r\n\r\n　　昨天上午，国家测绘局组织中航四维(北京)航空遥感技术有限公司在舟曲的无人飞机航摄系统起飞对灾区进行了航空摄影，获\r\r\n取到灾区10平方千米、0.15米分辨率的灾后航空影像。\r\n\r\n', null, '1');
INSERT INTO `news_title` VALUES ('2', '官方回应质疑：舟曲灾情与水利设施无关', null, null, '1');
INSERT INTO `news_title` VALUES ('3', '甘肃陇南再发泥石流22人遇难或失踪 万人被困', null, null, '1');
INSERT INTO `news_title` VALUES ('4', '舟曲存9处地灾隐患 官方发紧急逃生法', null, null, '1');
INSERT INTO `news_title` VALUES ('5', '舟曲灾区遇难人数升至1144人 600人失踪  ', null, null, '1');
INSERT INTO `news_title` VALUES ('6', '甘肃舟曲堰塞湖堰塞体已消除', null, null, '1');
INSERT INTO `news_title` VALUES ('7', '甘肃舟曲因大雨再发泥石流 灾区饮用水告急   ', null, null, '1');
INSERT INTO `news_title` VALUES ('8', '暴雨致甘肃陇南20人死亡16人失踪', null, null, '1');
INSERT INTO `news_title` VALUES ('9', '舟曲母亲泥沼中托举4岁儿子8小时', null, null, '1');
INSERT INTO `news_title` VALUES ('10', '广东肇庆地质灾害致7栋楼倒入江中 ', null, null, '2');
INSERT INTO `news_title` VALUES ('11', '李伟调任国务院发展研究中心党组书记', null, null, '2');
INSERT INTO `news_title` VALUES ('12', '透视国内影视城建设：仅有5%能够赚取微利', null, null, '2');
INSERT INTO `news_title` VALUES ('13', '公路改造之后又\"彻底改造\" 短命工程何时休', null, null, '2');
INSERT INTO `news_title` VALUES ('14', '美国媒体称驻伊美军撤离后雇佣兵将填补空白', null, null, '3');
INSERT INTO `news_title` VALUES ('15', '日单独向韩谢罪 牵动东北亚神经', null, null, '3');
INSERT INTO `news_title` VALUES ('16', '俄大火诱欧小麦价涨', null, null, '3');
INSERT INTO `news_title` VALUES ('17', '衡量全球变暖的十大标尺', null, null, '3');
INSERT INTO `news_title` VALUES ('18', '伊朗卖石油 弃用\"脏钱\"美元和欧元', null, null, '3');
INSERT INTO `news_title` VALUES ('19', '村民为救男孩被洪水卷走', null, null, '8');
INSERT INTO `news_title` VALUES ('20', '市民100元钱存9年仅剩60余元 银行收费超利息', null, null, '8');
INSERT INTO `news_title` VALUES ('21', '教师因与学生冲突道歉遭家长拒绝后挥刀自伤', null, null, '8');
INSERT INTO `news_title` VALUES ('22', '父亲为给儿子治病上街乞讨', null, null, '8');
INSERT INTO `news_title` VALUES ('23', '麦蒂重燃活塞唯有一条路可走 \r\n', null, null, '4');
INSERT INTO `news_title` VALUES ('24', 'NBA球员夏天怎么训练 光跑圈有什么用 . ', null, null, '4');
INSERT INTO `news_title` VALUES ('25', '中国篮球跳不出的圈圈 邓华德中考很矛盾', null, null, '4');
INSERT INTO `news_title` VALUES ('26', '五虎上将送给加内特 看KG咆哮豪气干云', null, null, '4');
INSERT INTO `news_title` VALUES ('27', '提醒！体操中心应给董芳霄一笔封口费', null, null, '4');
INSERT INTO `news_title` VALUES ('28', '新疆军区陆航部队在沙尘天气中训练 \r\n', null, null, '5');
INSERT INTO `news_title` VALUES ('29', '解放军演习刻意加大难度 演兵场改造后面目全非', null, null, '5');
INSERT INTO `news_title` VALUES ('30', '印度自制直升机国产化率仅一成 军方对性能不满', null, null, '5');
INSERT INTO `news_title` VALUES ('31', '俄海军司令称将谋求海外军港 用于停泊重型舰艇', null, null, '5');
INSERT INTO `news_title` VALUES ('32', '英国新型驱逐舰防空火力强悍 兼具投送部队绝活', null, null, '5');
INSERT INTO `news_title` VALUES ('33', '武汉酷热逼出高校“楼顶哥”6成学生夜不沾床\r\n', null, null, '6');
INSERT INTO `news_title` VALUES ('34', '本科生就业不敌高职 英语计算机成失业重灾区', null, null, '6');
INSERT INTO `news_title` VALUES ('35', '辽宁将招4391名公务员. ', null, null, '6');
INSERT INTO `news_title` VALUES ('36', '会计职称考试成绩查询开始.', null, null, '6');
INSERT INTO `news_title` VALUES ('37', '中国高等教育步入大众化阶段.', null, null, '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qq', 'www', 'we', 'rewr', 'ewr');
INSERT INTO `user` VALUES ('2', 'dafd', 'dasf', 'dafs', 'dfas', 'dfas');
INSERT INTO `user` VALUES ('3', 'mnkjuh', 'tt', 'tt', 'tt', 'tt');
