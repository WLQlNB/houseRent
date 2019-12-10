/*
Navicat MySQL Data Transfer

Source Server         : work
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : zu

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-10 08:58:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` double(255,0) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(255) NOT NULL,
  PRIMARY KEY (`apply_id`,`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('15', 'z7', '北京市沙河7', '100', '3000.00', '申请中', '1');
INSERT INTO `apply` VALUES ('16', 'z2', '北京市沙河2', '100', '3000.00', '申请中', '1');
INSERT INTO `apply` VALUES ('17', 'z6', '北京市沙河6', '100', '3000.00', '申请中', '3');

-- ----------------------------
-- Table structure for applyout
-- ----------------------------
DROP TABLE IF EXISTS `applyout`;
CREATE TABLE `applyout` (
  `aoid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`aoid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applyout
-- ----------------------------
INSERT INTO `applyout` VALUES ('1', 'z1', '北京市沙河1', '已同意', '3');
INSERT INTO `applyout` VALUES ('2', 'z3', '北京市沙河3', '已同意', '3');
INSERT INTO `applyout` VALUES ('3', 'z3', '北京市沙河3', '已同意', '3');
INSERT INTO `applyout` VALUES ('4', 'z1', '北京市沙河1', '申请中', '3');

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO `checkout` VALUES ('1', 'z1', '北京市沙河1', '已退租', '3');
INSERT INTO `checkout` VALUES ('2', 'z2', '北京市沙河2', '已退租', '1');
INSERT INTO `checkout` VALUES ('3', 'z3', '北京市沙河3', '已退租', '3');
INSERT INTO `checkout` VALUES ('4', 'z3', '北京市沙河3', '已退租', '3');

-- ----------------------------
-- Table structure for hetong
-- ----------------------------
DROP TABLE IF EXISTS `hetong`;
CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuzu` varchar(255) DEFAULT NULL,
  `chuzu_idcard` varchar(255) DEFAULT NULL,
  `zuke` varchar(255) DEFAULT NULL,
  `zuke_idcard` varchar(255) DEFAULT NULL,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `house_id` varchar(255) DEFAULT NULL,
  `payday` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hetong
-- ----------------------------
INSERT INTO `hetong` VALUES ('4', 'admin', '420321342343242344', 'jack', '420345199807243457', '2019-09-25', '2019-12-25', '3000.00', '北京市沙河5', 'z5', '1');
INSERT INTO `hetong` VALUES ('5', 'admin', '420321342343242344', 'jack', '420345199807243457', '2019-09-25', '2019-12-25', '3000.00', '北京市沙河5', 'z5', '1');
INSERT INTO `hetong` VALUES ('6', 'admin', '420321342343242344', 'jack', '420345199807243457', '2019-09-01', '2019-10-01', '3000.00', '北京市沙河5', 'z5', '1');
INSERT INTO `hetong` VALUES ('7', 'admin', '420321342343242344', '张三', '420345199807243458', '2019-09-01', '2019-10-01', '3000.00', '北京市沙河1', 'z1', '1');
INSERT INTO `hetong` VALUES ('8', 'admin', '420321342343242344', 'Tom', '420345199807243456', '2019-09-25', '2019-10-25', '3000.00', '北京市沙河4', 'z4', '1');

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `area` double DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`houseid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES ('4', 'z1', '北京市沙河1', '100', '3000.00', '已租赁');
INSERT INTO `houselist` VALUES ('5', 'z4', '北京市沙河4', '100', '3000.00', '已租赁');
INSERT INTO `houselist` VALUES ('6', 'z5', '北京市沙河5', '100', '3000.00', '已租赁');
INSERT INTO `houselist` VALUES ('7', 'z6', '北京市沙河6', '100', '3000.00', '已被申请');
INSERT INTO `houselist` VALUES ('8', 'z7', '北京市沙河7', '100', '3000.00', '已被申请');
INSERT INTO `houselist` VALUES ('9', 'z8', '北京市沙河8', '100', '3000.00', '未租赁');
INSERT INTO `houselist` VALUES ('10', 'z2', '北京市沙河2', '100', '3000.00', '已被申请');

-- ----------------------------
-- Table structure for paid
-- ----------------------------
DROP TABLE IF EXISTS `paid`;
CREATE TABLE `paid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paydate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paid
-- ----------------------------
INSERT INTO `paid` VALUES ('1', 'z2', '北京市沙河2', '3000.00', '2019-08-01', '2019-09-25', 'Tom', '1', '租金已缴');
INSERT INTO `paid` VALUES ('2', 'z2', '北京市沙河2', '3000.00', '2019-08-14', '2019-09-25', 'Tom', '1', '租金已缴');
INSERT INTO `paid` VALUES ('3', 'z1', '北京市沙河1', '3000.00', '2019-09-30', '2019-09-25', '张三', '3', '租金已缴');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '2019-08-31', '收租');
INSERT INTO `schedule` VALUES ('2', '2019-09-31', '收租');
INSERT INTO `schedule` VALUES ('3', '2019-09-25', '收租');

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of solve
-- ----------------------------
INSERT INTO `solve` VALUES ('1', 'z1', '北京市沙河1', '2019-08-10', '漏水', '张三', '3', '已处理');
INSERT INTO `solve` VALUES ('2', 'z2', '北京市沙河2', '2019-08-15', '漏水', 'Tom', '1', '已处理');
INSERT INTO `solve` VALUES ('3', 'z3', '北京市沙河3', '2019-08-21', '漏水', '张三', '3', '已处理');
INSERT INTO `solve` VALUES ('5', 'z3', '北京市沙河3', '2019-08-16', '漏水', '张三', '3', '已处理');
INSERT INTO `solve` VALUES ('6', 'z3', '北京市沙河3', '2019-09-24', '漏水', '张三', '3', '已处理');
INSERT INTO `solve` VALUES ('7', 'z1', '北京市沙河1', '2019-09-25', '漏水', '张三', '3', '已处理');

-- ----------------------------
-- Table structure for topaid
-- ----------------------------
DROP TABLE IF EXISTS `topaid`;
CREATE TABLE `topaid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topaid
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', 'admin');
INSERT INTO `user` VALUES ('2', '张三', '123456', 'zuke');
INSERT INTO `user` VALUES ('3', 'Tom', '123456', 'zuke');
INSERT INTO `user` VALUES ('4', 'jack', '123456', 'zuke');
INSERT INTO `user` VALUES ('5', '李四', '123456', 'zuke');
INSERT INTO `user` VALUES ('15', '曹操', '123456', 'zuke');
INSERT INTO `user` VALUES ('17', '刘备', '123456', 'zuke');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`idcard`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('1', 'Tom', '420345199807243456', '134799486826', '3');
INSERT INTO `userlist` VALUES ('2', 'jack', '420345199807243457', '134799486876', '4');
INSERT INTO `userlist` VALUES ('3', '张三', '420345199807243458', '13479946822', '2');
INSERT INTO `userlist` VALUES ('4', 'admin', '420321342343242344', '158342344323', '1');
INSERT INTO `userlist` VALUES ('5', '李四', '420345199807243451', '134799483212', '5');

-- ----------------------------
-- Table structure for wrong
-- ----------------------------
DROP TABLE IF EXISTS `wrong`;
CREATE TABLE `wrong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wrong
-- ----------------------------
INSERT INTO `wrong` VALUES ('7', 'z1', '北京市沙河1', '2019-09-25', '漏水', '张三', '3', '待处理');

-- ----------------------------
-- Table structure for zulist
-- ----------------------------
DROP TABLE IF EXISTS `zulist`;
CREATE TABLE `zulist` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  PRIMARY KEY (`zid`,`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zulist
-- ----------------------------
INSERT INTO `zulist` VALUES ('4', 'z1', '3000.00', '北京市沙河1', '3', '7');
INSERT INTO `zulist` VALUES ('5', 'z4', '3000.00', '北京市沙河4', '1', '8');
