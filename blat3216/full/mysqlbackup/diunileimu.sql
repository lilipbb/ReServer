# Host: 127.0.0.1  (Version 5.7.17-log)
# Date: 2018-03-08 20:14:01
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `buyid` varchar(1023) DEFAULT NULL,
  `allexp` int(11) DEFAULT '0',
  `selectrole` tinyint(3) unsigned DEFAULT '0',
  `win` int(11) DEFAULT '0',
  `fail` int(11) DEFAULT '0',
  `tied` int(11) DEFAULT '0',
  `minipic` blob,
  `allkill` binary(1) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `lasttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gift` binary(1) DEFAULT '0',
  `machineid` varchar(255) DEFAULT NULL,
  `payid` binary(1) DEFAULT NULL,
  `equipid` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'lilipbb','e1adc3949ba59abbe56e057f2f883e','1111',0,NULL,1000,3,3,28,0,NULL,X'00',1,'2017-01-27 14:04:56',X'30',NULL,NULL,NULL);
