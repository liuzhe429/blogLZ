# Host: 127.0.0.1  (Version: 5.6.17)
# Date: 2017-03-30 18:55:30
# Generator: MySQL-Front 5.3  (Build 4.173)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "article"
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '默认标题' COMMENT '文章标题',
  `cateId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类',
  `keywords` varchar(255) DEFAULT NULL COMMENT '文章关键词',
  `content` varchar(1) DEFAULT NULL COMMENT '文章内容',
  PRIMARY KEY (`Id`),
  KEY `cateId` (`cateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

#
# Data for table "article"
#

/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `catename` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章分类表';

#
# Data for table "category"
#

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '管理员' COMMENT '用户名称',
  `sex` enum('0','1') NOT NULL DEFAULT '0' COMMENT '性别,默认男',
  `regTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'管理员','0','0000-00-00 00:00:00'),(2,'管理员','0','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
