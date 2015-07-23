/*
Navicat MySQL Data Transfer

Source Server         : mysql5
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-07-19 00:02:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '模块名',
  `description` varchar(100) DEFAULT NULL COMMENT '对模块的描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for `response`
-- ----------------------------
DROP TABLE IF EXISTS `response`;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) NOT NULL COMMENT '该回复对应的主题',
  `user_id` varchar(50) NOT NULL COMMENT '回复者',
  `content` varchar(500) NOT NULL COMMENT '回复的内容',
  `create_time` datetime NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `theme_id` (`theme_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `response_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  CONSTRAINT `response_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of response
-- ----------------------------

-- ----------------------------
-- Table structure for `theme`
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(200) DEFAULT NULL COMMENT '帖子主题',
  `user_id` varchar(50) NOT NULL COMMENT '贴子创建者id',
  `module_id` tinyint(4) NOT NULL COMMENT '该贴子所属的模块',
  `is_up` tinyint(3) DEFAULT '0' COMMENT '是否置顶，1表示置顶，0表示不置顶',
  `is_lock` tinyint(3) unsigned zerofill DEFAULT '000' COMMENT '是否锁定，1表示锁定，0表示不锁定，锁定之后不能再回复',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `module_id` (`module_id`),
  CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`),
  CONSTRAINT `theme_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of theme
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL COMMENT '用户ID，必须唯一',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `visit_log`
-- ----------------------------
DROP TABLE IF EXISTS `visit_log`;
CREATE TABLE `visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL COMMENT '进入贴子时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `theme_id` (`theme_id`),
  CONSTRAINT `visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`),
  CONSTRAINT `visit_log_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visit_log
-- ----------------------------
