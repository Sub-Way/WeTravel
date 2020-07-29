package com.ssafy.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.travel.dao.ArticleDao;
import com.ssafy.travel.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	ArticleDao dao;

	@Override
	public boolean registArticle(Article article) {
		return dao.registArticle(article) == 1;
	}

	@Override
	public List<Article> getArticleList(int bookno) {
		return dao.getArticleList(bookno);
	}

	@Override
	public boolean deleteArticle(int articleno) {
		return dao.deleteArticle(articleno) == 1;
	}

	@Override
	public boolean modifyArticle(Article article) {
		return dao.modifyArticle(article) == 1;
	}

	@Override
	public Article getArticleDetail(int articleno) {
		return dao.getArticleDetail(articleno);
	}
	
}
