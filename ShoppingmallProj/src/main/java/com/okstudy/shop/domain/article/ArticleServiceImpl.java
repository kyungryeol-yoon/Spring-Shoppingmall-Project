package com.okstudy.shop.domain.article;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	private static final Logger logger = LoggerFactory.getLogger(ArticleServiceImpl.class);
	@Autowired
	ArticleDAO articleDAO;
	
//    private final ArticleDAO articleDAO;
//
//    @Inject
//    public ArticleServiceImpl(ArticleDAO articleDAO) {
//        this.articleDAO = articleDAO;
//    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        articleDAO.create(articleVO);
    }

    @Override
    public ArticleVO read(Integer articleNo) throws Exception {
        return articleDAO.read(articleNo);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        articleDAO.update(articleVO);
    }

    @Override
    public void delete(Integer articleNo) throws Exception {
        articleDAO.delete(articleNo);
    }

    @Override
    public List<ArticleVO> articleList() throws Exception {
    	logger.info("service list...");
        return articleDAO.articleList();
    }
}