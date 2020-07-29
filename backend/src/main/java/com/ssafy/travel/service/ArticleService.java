package com.ssafy.travel.service;

import java.util.List;

import com.ssafy.travel.dto.Article;

public interface ArticleService {
	public boolean registArticle(Article article); 
	public List<Article> getArticleList(int bookno);
	public boolean deleteArticle(int articleno);
	public Article getArticleDetail(int articleno);
	public boolean modifyArticle(Article article);
}
