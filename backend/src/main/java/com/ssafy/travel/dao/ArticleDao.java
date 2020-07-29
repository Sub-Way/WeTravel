package com.ssafy.travel.dao;

import java.util.List;

import com.ssafy.travel.dto.Article;

public interface ArticleDao {
	public int registArticle(Article article); 
	public List<Article> getArticleList(int bookno);
	public int deleteArticle(int articleno);
	public int modifyArticle(Article article);
	public Article getArticleDetail(int articleno);
}
