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
	private String userName;	// 게시글 작성자의 이름(회원이름)
	private Date regdate;		// 게시글 작성일자 util.Date
	private int viewcnt;		// 게시글 조회수
	private int recnt;			// 게시글 댓글의 수 
	private String show;		// 게시글 삭제 상태 유무(y, n)
	private String[] files;		// 게시글 첨부파일의 이름(배열)
}
