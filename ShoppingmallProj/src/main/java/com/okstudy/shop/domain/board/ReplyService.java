package com.okstudy.shop.domain.board;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface ReplyService {
	// 1. 댓글 입력
    public void create(ReplyVO vo);
    // 2. 댓글 목록
    public List<ReplyVO> list(Integer replyboardIdx, int start, int end, HttpSession session);
    // 3. 댓글 상세보기
    public ReplyVO detail(Integer replyIdx);
    // 4. 댓글 수정
    public void update(ReplyVO vo);
    // 5. 댓글 삭제
    public void delete(Integer replyIdx);
    // 6. 댓글 갯수
    public int count(Integer replyboardIdx);
}