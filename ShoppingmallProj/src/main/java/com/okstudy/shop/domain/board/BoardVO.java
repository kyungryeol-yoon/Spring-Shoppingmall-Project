package com.okstudy.shop.domain.board;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Board")
@ToString
@Getter @Setter
public class BoardVO {
	private int boardIdx;			// 게시글 번호
	private String title;		// 게시글 제목
	private String content;		// 게시글 내용
	private String writer;		// 게시글 작성자
	private Date regDate;		// 게시글 작성일자 util.Date
	private int viewCnt;		// 게시글 조회수
}
