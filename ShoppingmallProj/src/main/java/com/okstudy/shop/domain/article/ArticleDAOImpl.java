package com.okstudy.shop.domain.article;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("articleDAO")
public class ArticleDAOImpl implements ArticleDAO {
	private static final Logger logger = LoggerFactory.getLogger(ArticleDAOImpl.class);
	private static final String NAMESPACE = "com.okstudy.shop.mapper.article.ArticleMapper";
	
	@Autowired
	SqlSession sqlSession;
	
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
    public List<ArticleVO> articleList() throws Exception {
    	logger.info("dao list...");
        return sqlSession.selectList(NAMESPACE + ".articleList");
    }
}
