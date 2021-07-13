/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50022
Source Host           : localhost:3307
Source Database       : db_guahao

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2021-6-20 12:16:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` int(11) NOT NULL,
  `biaoti` varchar(255) default NULL,
  `neirong` varchar(255) default NULL,
  `shijian` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告', '测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告', '2013-11-29 18:13');
INSERT INTO `t_gonggao` VALUES ('2', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmmmmmmmmmm', '2020-06-20 08:14');

-- ----------------------------
-- Table structure for `t_guahao`
-- ----------------------------
DROP TABLE IF EXISTS `t_guahao`;
CREATE TABLE `t_guahao` (
  `id` int(11) NOT NULL default '0',
  `zhuanjiaId` int(11) default NULL,
  `userId` int(11) default NULL,
  `riqi` varchar(255) default NULL,
  `jibing` varchar(255) default NULL,
  `xingming` varchar(255) default NULL,
  `lianxi` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guahao
-- ----------------------------

-- ----------------------------
-- Table structure for `t_keshi`
-- ----------------------------
DROP TABLE IF EXISTS `t_keshi`;
CREATE TABLE `t_keshi` (
  `keshi_id` int(11) NOT NULL,
  `keshi_anme` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`keshi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_keshi
-- ----------------------------
INSERT INTO `t_keshi` VALUES ('2', '内科', 'no');
INSERT INTO `t_keshi` VALUES ('3', '外科', 'no');
INSERT INTO `t_keshi` VALUES ('4', '胸科', 'no');
INSERT INTO `t_keshi` VALUES ('5', '骨科', 'no');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(50) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_address` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_email` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '北京路1', '13444444444', 'liusan@163.com', 'no');

-- ----------------------------
-- Table structure for `t_yiyuan`
-- ----------------------------
DROP TABLE IF EXISTS `t_yiyuan`;
CREATE TABLE `t_yiyuan` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) default NULL,
  `dizhi` varchar(50) default NULL,
  `dianhua` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yiyuan
-- ----------------------------
INSERT INTO `t_yiyuan` VALUES ('2', '北京大学第三医院 ', '海淀区花园北路49号', '010-82266699', 'no');
INSERT INTO `t_yiyuan` VALUES ('3', '阜外心血管病医院', '西城区北礼士路167号', '010-88398866', 'no');
INSERT INTO `t_yiyuan` VALUES ('4', '北京大学人民医院', '西城区西直门南大街', '010-66583666', 'no');

-- ----------------------------
-- Table structure for `t_zhuanjia`
-- ----------------------------
DROP TABLE IF EXISTS `t_zhuanjia`;
CREATE TABLE `t_zhuanjia` (
  `id` int(11) NOT NULL default '0',
  `yiyuanId` int(11) default NULL,
  `keshiId` int(11) default NULL,
  `xingming` varchar(255) default NULL,
  `xingbie` varchar(11) default NULL,
  `nianling` int(11) default NULL,
  `shanchang` varchar(255) default NULL,
  `leixing` varchar(255) default NULL,
  `fujian` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zhuanjia
-- ----------------------------
INSERT INTO `t_zhuanjia` VALUES ('2', '2', '2', '王晓光', '男', '40', '各类心脑血管各类疾病病', '专家门诊', '/upload/1362249942828.jpg', 'no');
INSERT INTO `t_zhuanjia` VALUES ('3', '2', '2', '张大海', '男', '40', '各类心血管外科各种疾病', '专家门诊', '/upload/1362250001253.jpg', 'no');
INSERT INTO `t_zhuanjia` VALUES ('4', '2', '2', '刘莉莉', '男', '52', '各类口腔科疾病药到病除', '普通门诊', '/upload/1362250044364.jpg', 'no');
