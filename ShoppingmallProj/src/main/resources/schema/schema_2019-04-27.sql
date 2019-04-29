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

DROP TABLE IF EXISTS `SH_BOARD_TB`;

create table `SH_BOARD_TB`(
	`BOARD_IDX` int not null auto_increment,          
	`BOARD_TITLE` varchar(200) not null,
	`BOARD_CONTENT` varchar(4000),        
	`BOARD_WRITER` varchar(50) not null,   
	`REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP, 
	`VIEW_COUNT` int default 0,
	`BOARD_SHOW` char(1),
	primary key(BOARD_IDX)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_BOARD_REPLY_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_BOARD_REPLY_TB`;

create table SH_BOARD_REPLY_TB(
	`REPLY_IDX` int not null auto_increment, 
	`REPLY_BOARD_IDX` int not null,
	`REPLY_TEXT` varchar(1000) not null,
	`REPLYER` varchar(50),           
	`REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP, 
	`UPDATE_DATE` timestamp NULL DEFAULT NULL,
	`SECRET_REPLY` char(1),
	primary key(REPLY_IDX)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 댓글 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

ALTER TABLE SH_BOARD_REPLY_TB ADD FOREIGN KEY(REPLY_BOARD_IDX) REFERENCES SH_BOARD_TB(BOARD_IDX);



# 게시판 첨부파일 테이블 생성
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_BOARD_ATTACH_TB`;

CREATE TABLE SH_BOARD_ATTACH_TB (
  `BOARD_ATTACH_FULLNAME` VARCHAR(150) NOT NULL,
  `ATTACH_BOARD_IDX` int NOT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(BOARD_ATTACH_FULLNAME)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 게시판 첨부파일 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

ALTER TABLE SH_BOARD_ATTACH_TB ADD FOREIGN KEY(ATTACH_BOARD_IDX) REFERENCES SH_BOARD_TB(BOARD_IDX);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
