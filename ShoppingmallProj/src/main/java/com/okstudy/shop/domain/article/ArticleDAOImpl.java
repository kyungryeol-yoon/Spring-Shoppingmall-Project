package com.okstudy.shop.domain.article;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAOImpl implements ArticleDAO {
	private static final String NAMESPACE = "com.okstudy.shop.mapper.article.ArticleMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
//    private final SqlSession sqlSession;
//
//    @Inject
//    public ArticleDAOImpl(SqlSession sqlSession) {
//        this.sqlSession = sqlSession;
//    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        sqlSession.insert(NAMESPACE + ".create", articleVO);
    }

    @Override
    public ArticleVO read(Integer articleNo) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".read", articleNo);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        sqlSession.update(NAMESPACE + ".update", articleVO);
    }

    @Override
    public void delete(Integer articleNo) throws Exception {
        sqlSession.delete(NAMESPACE + ".delete", articleNo);
    }

    @Override
    public List<ArticleVO> listAll() throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listAll");
    }
}
