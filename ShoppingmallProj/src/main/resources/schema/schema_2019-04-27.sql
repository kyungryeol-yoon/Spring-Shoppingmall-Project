# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: shoppingMall
# Generation Time: 2019-04-26 23:59:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table SH_CATEGORY_PRDT_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_CATEGORY_PRDT_TB`;

CREATE TABLE `SH_CATEGORY_PRDT_TB` (
  `CATEGORY_IDX` int(11) NOT NULL,
  `PRODUCT_ID` varchar(50) NOT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CATEGORY_IDX`,`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_CATEGORY_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_CATEGORY_TB`;

CREATE TABLE `SH_CATEGORY_TB` (
  `CATEGORY_IDX` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `REG_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_MEMBER_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_MEMBER_TB`;

CREATE TABLE `SH_MEMBER_TB` (
  `MEMBER_IDX` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` varchar(255) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `ADDR` varchar(255) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `PHONE_NUMBER1` varchar(10) NOT NULL,
  `PHONE_NUMBER2` varchar(10) NOT NULL,
  `PHONE_NUMBER3` varchar(10) NOT NULL,
  `EMAIL1` varchar(20) NOT NULL,
  `EMAIL2` varchar(20) NOT NULL,
  `REG_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`MEMBER_IDX`),
  UNIQUE KEY `MEMBER_ID_UNIQUE` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_MILEAGE_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_MILEAGE_TB`;

CREATE TABLE `SH_MILEAGE_TB` (
  `MILEAGE_IDX` int(10) unsigned NOT NULL,
  `MEMBER_IDX` varchar(45) NOT NULL,
  `INDECREASE_VAL` int(11) DEFAULT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MILEAGE_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_ORDER_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_ORDER_TB`;

CREATE TABLE `SH_ORDER_TB` (
  `ORDER_ID` varchar(50) NOT NULL,
  `MEMBER_IDX` varchar(45) DEFAULT NULL,
  `NON_MEMBER_IDX` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_PRODUCT_OPTION_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_PRODUCT_OPTION_TB`;

CREATE TABLE `SH_PRODUCT_OPTION_TB` (
  `PRDT_OPTION_IDX` int(11) NOT NULL,
  `PRODUCT_ID` varchar(45) DEFAULT NULL,
  `NAME` varchar(45) NOT NULL,
  `ADDED_PRICE` int(11) NOT NULL,
  `HIDDEN` enum('Y','N') NOT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRDT_OPTION_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_PRODUCT_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_PRODUCT_TB`;

CREATE TABLE `SH_PRODUCT_TB` (
  `PRODUCT_ID` varchar(50) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `STATUS` enum('NOMAL','SOLDOUT','HIDDEN') NOT NULL DEFAULT 'HIDDEN',
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text,
  `MILEAGE` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_RELATION_PRODUCT_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_RELATION_PRODUCT_TB`;

CREATE TABLE `SH_RELATION_PRODUCT_TB` (
  `RELATION_PRDT_IDX` int(11) NOT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RELATION_PRDT_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_BOARD_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS 'SH_BOARD_TB';

create table `SH_BOARD_TB`(
	`bno` int not null auto_increment,          
	`title` varchar(200) not null,
	`content` varchar(4000),        
	`writer` varchar(50) not null,   
	`regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP, 
	`viewcnt` int default 0,
	`show` char(1),
	primary key(bno)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_BOARD_REPLY_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS 'SH_BOARD_REPLY_TB';

create table SH_BOARD_REPLY_TB(
	rno int not null auto_increment, 
	bno int not null,
	replytext varchar(1000) not null,
	replyer varchar(50),           
	regdate timestamp NULL DEFAULT CURRENT_TIMESTAMP, 
	updatedate timestamp NULL DEFAULT NULL,
	secret_reply char(1),
	primary key(rno)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 댓글 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

alter table SH_BOARD_REPLY_TB add foreign key(bno) references SH_BOARD_TB(bno);



# 게시판 첨부파일 테이블 생성
# ------------------------------------------------------------

DROP TABLE IF EXISTS 'SH_BOARD_ATTACH_TB';

CREATE TABLE SH_BOARD_ATTACH_TB (
  fullname VARCHAR(150) NOT NULL,
  bno int NOT NULL,
  regdate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(fullname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 게시판 첨부파일 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

ALTER TABLE SH_BOARD_ATTACH_TB add FOREIGN KEY(bno) REFERENCES SH_BOARD_TB(bno);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
