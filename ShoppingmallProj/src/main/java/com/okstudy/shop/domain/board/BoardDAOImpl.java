package com.okstudy.shop.domain.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository    // 현재 클래스를 dao bean으로 등록
public class BoardDAOImpl implements BoardDAO {
	
	private static final String NAMESPACE = "com.okstudy.shop.domain.board.BoardDAO";
	
	private final SqlSession sqlSession;

    @Inject
    public BoardDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
	
	// 01_01. 게시글 작성
	@Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert(NAMESPACE + ".creat", vo);
	}
	
	// 02. 게시글 상세보기
	@Override
	public BoardVO read(int boardIdx) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".read", boardIdx);
	}
	// 03. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update(NAMESPACE + ".update", vo);

	}
	// 04. 게시글 삭제
	@Override
	public void delete(int boardIdx) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete",boardIdx);

	}
	// 05. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}
}
