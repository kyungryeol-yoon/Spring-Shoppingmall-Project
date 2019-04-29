package com.okstudy.shop.domain.board;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Reply")
@ToString
@Getter @Setter
public class ReplyVO {
    private Integer replyIdx;        // 댓글 번호
    private Integer replyboardIdx;        // 게시글 번호
    private String replytext;    // 댓글 내용
    private String replyer;        // 댓글 작성자
    private String userName;    // 댓글 작성자의 이름(회원의 이름)
    private Date regdate;        // 댓글 작성일자
    private Date updatedate;    // 댓글 수정일자
    private String secretReply;    // **댓글 숨김 유무 추가
    private String writer;        // **게시글의 작성자 추가
}
