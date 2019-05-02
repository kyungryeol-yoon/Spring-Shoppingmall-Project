package com.okstudy.shop.domain.board;

import java.util.List;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BoardService")
public class BoardServiceImpl implements BoardService {
    
	//private final BoardDAO boardDAO;
	
	@Autowired BoardDAOImpl boardDAO;
//	@Inject
//	public BoardServiceImpl(BoardDAO boardDAO) {
//		this.boardDAO = boardDAO;
//	}
	
	// 01. 게시글쓰기
	@Override
	public void create(BoardVO vo) throws Exception {
		boardDAO.create(vo);
		
	}
	// 02. 게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		return boardDAO.read(bno);
	}
	// 03. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		boardDAO.update(vo);
	}
	// 04. 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		boardDAO.delete(bno);
	}
	// 05. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return boardDAO.listAll();
	}
}