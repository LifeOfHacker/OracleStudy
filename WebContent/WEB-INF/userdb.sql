/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : shopdb

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-06-03 09:41:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `usermessage`
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(20) NOT NULL,
  `TOUXIANG` varchar(100) DEFAULT 'images/user_head/default.png',
  `YOUXIANG` varchar(20) DEFAULT NULL,
  `NICHENG` varchar(20) DEFAULT '游客',
  `ZHENSHIXINGMING` varchar(20) DEFAULT NULL,
  `XINGBIE` varchar(2) DEFAULT NULL,
  `CHUSHENG_NIAN` int(11) DEFAULT NULL,
  `CHUSHENG_YUE` int(11) DEFAULT NULL,
  `CHUSHENG_RI` int(11) DEFAULT NULL,
  `DIQU_SHENG` varchar(20) DEFAULT NULL,
  `DIQU_SHI` varchar(20) DEFAULT NULL,
  `DIQU_XIAN` varchar(20) DEFAULT NULL,
  `XIANGXIDIZHI` varchar(100) DEFAULT NULL,
  `YOUBIAN` int(11) DEFAULT NULL,
  `SHOUJIHAO` varchar(20) DEFAULT NULL,
  `ZUOJI` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERID` (`USERID`),
  UNIQUE KEY `YOUXIANG` (`YOUXIANG`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
INSERT INTO `usermessage` VALUES ('1', '123', 'images/userImages/uploadFiles/9639b66b-9ca9-416e-9b2c-8eca4021421c.png', '123@163.com', '昵称725210', '真实姓名oFr', '男', '2016', '10', '1', '110000', '1', '1', 'fGF区bRR街', '896108', '18827552828', '5094144481');
INSERT INTO `usermessage` VALUES ('2', '&$q}VF{E', 'images/user_head/8.gif', '41376225@163.com', '昵称957', '真实姓名DQa', '男', '2000', '1', '19', '上海市', '黄石市', '江岸区', 'oCV区NVu街', '710076', '17003397283', '6501044348');
INSERT INTO `usermessage` VALUES ('3', 'Msyn4U7', 'images/user_head/8.gif', '05230136@163.com', '昵称909', '真实姓名SSS', '男', '2000', '8', '11', '重庆市', '襄阳市', '新洲区', 'wUu区yrE街', '171148', '18844086524', '990105362');
INSERT INTO `usermessage` VALUES ('4', ':]sC}#?l', 'images/user_head/5.gif', '30769364@163.com', '昵称149', '真实姓名kDa', '男', '2000', '2', '4', '黑龙江省', '枣阳市', '汉阳区', 'kkG区pLV街', '914225', '17761611230', '31036628');
INSERT INTO `usermessage` VALUES ('5', '4dmo?n<a', 'images/user_head/0.gif', '53743315@163.com', '昵称366', '真实姓名gzW', '男', '2000', '1', '25', '云南省', '孝感市', '江夏区', 'KtG区tmu街', '482695', '17440161508', '9720992408');
INSERT INTO `usermessage` VALUES ('6', '=/(nkp', 'images/user_head/3.gif', '59488373@163.com', '昵称539', '真实姓名tvO', '男', '2000', '8', '6', '黑龙江省', '恩施市', '青山区', 'Jzk区uUU街', '989268', '14633527667', '4590856115');
INSERT INTO `usermessage` VALUES ('7', 'CFXY$t', 'images/user_head/1.gif', '05216019@163.com', '昵称749', '真实姓名mcC', '男', '2000', '9', '26', '重庆市', '天门市', '武昌区', 'tpA区MTF街', '229490', '10203632364', '3901618067');
INSERT INTO `usermessage` VALUES ('8', 'zL6UK<9', 'images/user_head/8.gif', '67636196@163.com', '昵称738', '真实姓名Fxd', '女', '2000', '6', '21', '江苏省', '武汉市', '江夏区', 'cDP区OiC街', '167455', '15411089386', '6996796536');
INSERT INTO `usermessage` VALUES ('9', 'e.ozs]', 'images/user_head/5.gif', '07246853@163.com', '昵称362', '真实姓名CTD', '女', '2000', '12', '20', '广西省', '荆州市', '汉阳区', 'LsX区lgJ街', '866639', '17650774152', '4957451342');
INSERT INTO `usermessage` VALUES ('10', 'npgVz_-o', 'images/user_head/0.gif', '40768259@163.com', '昵称819', '真实姓名rhh', '男', '2000', '7', '6', '重庆市', '恩施市', '武昌区', 'iMH区TSB街', '916494', '14812704957', '9387995718');
INSERT INTO `usermessage` VALUES ('11', '`-zi:.', 'images/user_head/5.gif', '37612519@163.com', '昵称424', '真实姓名frM', '男', '2000', '6', '23', '北京市', '十堰市', '硚口区', 'MXp区Ccc街', '329417', '19706396295', '6253949138');
INSERT INTO `usermessage` VALUES ('12', '`a7>^k:', 'images/user_head/9.gif', '53984641@163.com', '昵称845', '真实姓名wXK', '男', '2000', '1', '30', '广西省', '恩施市', '江汉区', 'DXj区qgZ街', '967822', '19261397955', '4620506894');
INSERT INTO `usermessage` VALUES ('13', 'OU8/o9!M', 'images/user_head/6.gif', '68902263@163.com', '昵称533', '真实姓名FVs', '女', '2000', '11', '5', '北京市', '黄冈市', '汉阳区', 'svv区DeL街', '488816', '14386057714', '3530345595');
INSERT INTO `usermessage` VALUES ('14', 'EVQ&{PR?', 'images/user_head/6.gif', '64884248@163.com', '昵称455', '真实姓名dcN', '女', '2000', '1', '4', '云南省', '荆门市', '汉阳区', 'VXF区mjQ街', '593985', '10102686618', '626875294');
INSERT INTO `usermessage` VALUES ('15', 'z{woG', 'images/user_head/2.gif', '86560584@163.com', '昵称676', '真实姓名qiL', '男', '2000', '6', '20', '云南省', '枣阳市', '江夏区', 'TEe区nxL街', '40926', '18739178076', '1475360534');
INSERT INTO `usermessage` VALUES ('16', ']0e1`A6z]W', 'images/user_head/7.gif', '20237444@163.com', '昵称381', '真实姓名pQS', '男', '2000', '7', '25', '湖南省', '荆门市', '江岸区', 'LfN区HGg街', '852892', '19849615914', '4075865892');
INSERT INTO `usermessage` VALUES ('17', '7T{#B', 'images/user_head/8.gif', '16143206@163.com', '昵称938', '真实姓名aWF', '男', '2000', '6', '1', '江苏省', '黄石市', '江汉区', 'vsp区xXz街', '22271', '10445770669', '4702176699');
INSERT INTO `usermessage` VALUES ('18', 'kjWJcQuM^', 'images/user_head/1.gif', '46510629@163.com', '昵称661', '真实姓名lYb', '男', '2000', '6', '19', '重庆市', '枣阳市', '新洲区', 'DDz区Mrq街', '275100', '15656140684', '1511901294');
INSERT INTO `usermessage` VALUES ('19', 'HM_M!dF<V', 'images/user_head/2.gif', '46975840@163.com', '昵称353', '真实姓名XTh', '男', '2000', '8', '6', '内蒙古自治区', '武汉市', '江岸区', 'QQh区bYD街', '710789', '14272870598', '7501356483');
INSERT INTO `usermessage` VALUES ('20', 'U+Q)jQ83i', 'images/user_head/3.gif', '55528537@163.com', '昵称911', '真实姓名dzY', '男', '2000', '4', '14', '上海市', '枣阳市', '汉南区', 'RNu区KmN街', '441786', '18446370546', '2465311656');
INSERT INTO `usermessage` VALUES ('21', 'PWY(y', 'images/user_head/2.gif', '60448583@163.com', '昵称226', '真实姓名PCa', '男', '2000', '3', '25', '福建省', '十堰市', '黄陂区', 'lJj区kBe街', '219981', '19783292089', '380777733');
INSERT INTO `usermessage` VALUES ('22', 'LkCn*TkLf3', 'images/user_head/9.gif', '29113009@163.com', '昵称426', '真实姓名gOj', '男', '2000', '11', '14', '江苏省', '襄阳市', '黄陂区', 'Ejr区quM街', '150292', '12563361621', '1171484022');
INSERT INTO `usermessage` VALUES ('23', 'Z{]*+}&r3F', 'images/user_head/4.gif', '13452471@163.com', '昵称246', '真实姓名ipV', '女', '2000', '2', '30', '云南省', '恩施市', '江岸区', 'fkC区qTB街', '978436', '19754142627', '6876810158');
INSERT INTO `usermessage` VALUES ('24', 'c)n7-M:h', 'images/user_head/8.gif', '99648052@163.com', '昵称615', '真实姓名pyj', '男', '2000', '6', '12', '重庆市', '仙桃市', '新洲区', 'Oir区App街', '476053', '10796652749', '1226919496');
INSERT INTO `usermessage` VALUES ('25', 'DC-U3Pp', 'images/user_head/5.gif', '48407179@163.com', '昵称915', '真实姓名ZNv', '男', '2000', '2', '17', '北京市', '天门市', '青山区', 'IXj区gzp街', '694832', '12720364039', '9804636728');
INSERT INTO `usermessage` VALUES ('26', '?bSH!>ssP', 'images/user_head/8.gif', '34915207@163.com', '昵称198', '真实姓名jXf', '女', '2000', '4', '6', '黑龙江省', '枣阳市', '新洲区', 'Ahl区tkj街', '782392', '11087397117', '8905201683');
INSERT INTO `usermessage` VALUES ('27', 'gq?R-', 'images/user_head/5.gif', '31274387@163.com', '昵称758', '真实姓名gXx', '男', '2000', '6', '18', '陕西省', '仙桃市', '新洲区', 'wWZ区YZJ街', '168403', '17054080188', '17470512');
INSERT INTO `usermessage` VALUES ('28', '`#Tx=Z*_WM', 'images/user_head/4.gif', '64777812@163.com', '昵称913', '真实姓名vyf', '女', '2000', '6', '12', '广东省', '枣阳市', '硚口区', 'fFb区iRP街', '847351', '14045096094', '4022684603');
INSERT INTO `usermessage` VALUES ('29', ':x[-hPYU', 'images/user_head/7.gif', '69507772@163.com', '昵称134', '真实姓名yhv', '男', '2000', '6', '28', '福建省', '襄阳市', '江汉区', 'Rbe区jnh街', '64971', '15610362248', '1034377304');
INSERT INTO `usermessage` VALUES ('30', '_K#W~c', 'images/user_head/3.gif', '74845418@163.com', '昵称013', '真实姓名VxH', '男', '2000', '11', '1', '河北省', '武汉市', '汉阳区', 'gNp区fmU街', '599417', '18760931371', '8011828412');
INSERT INTO `usermessage` VALUES ('31', '111111', null, null, null, null, null, '2000', null, null, null, null, null, null, null, '13328456254', null);
INSERT INTO `usermessage` VALUES ('32', '111111', null, null, null, null, null, null, null, null, null, null, null, null, null, '18827552838', null);
INSERT INTO `usermessage` VALUES ('33', '111111', 'images/user_head/default.png', null, null, null, null, null, null, null, null, null, null, null, null, '18827552839', null);
select * from usermessage