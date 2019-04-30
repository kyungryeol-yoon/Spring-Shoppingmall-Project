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
	primary key(`BOARD_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SH_BOARD_REPLY_TB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_BOARD_REPLY_TB`;

create table `SH_BOARD_REPLY_TB`(
	`REPLY_IDX` int not null auto_increment, 
	`REPLY_BOARD_IDX` int not null,
	`REPLY_TEXT` varchar(1000) not null,
	`REPLYER` varchar(50),           
	`REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP, 
	`UPDATE_DATE` timestamp NULL DEFAULT NULL,
	`SECRET_REPLY` char(1),
	primary key(`REPLY_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 댓글 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

ALTER TABLE `SH_BOARD_REPLY_TB` ADD FOREIGN KEY(`REPLY_BOARD_IDX`) REFERENCES `SH_BOARD_TB`(`BOARD_IDX`);



# 게시판 첨부파일 테이블 생성
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SH_BOARD_ATTACH_TB`;

CREATE TABLE `SH_BOARD_ATTACH_TB` (
  `BOARD_ATTACH_FULLNAME` VARCHAR(150) NOT NULL,
  `ATTACH_BOARD_IDX` int NOT NULL,
  `REG_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(`BOARD_ATTACH_FULLNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# 게시판 첨부파일 테이블 제약조건(외래키) 생성
# ------------------------------------------------------------

ALTER TABLE `SH_BOARD_ATTACH_TB` ADD FOREIGN KEY(`ATTACH_BOARD_IDX`) REFERENCES `SH_BOARD_TB`(`BOARD_IDX`);