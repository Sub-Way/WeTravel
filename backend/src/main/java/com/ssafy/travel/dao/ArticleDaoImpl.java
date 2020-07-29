package com.ssafy.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.travel.dto.Article;

@Repository
public class ArticleDaoImpl implements ArticleDao{
	@Autowired
	SqlSession sqlSession;

	@Override
	public int registArticle(Article article) {
		return sqlSession.insert("m_article.registArticle",article);
	}

	@Override
	public List<Article> getArticleList(int bookno) {
		return sqlSession.selectList("m_article.getArticleList", bookno);
	}

	@Override
	public int deleteArticle(int articleno) {
		return sqlSession.delete("m_article.deleteArticle",articleno);
	}

	@Override
	public int modifyArticle(Article article) {
		return sqlSession.update("m_article.modifyArticle",article);
	}

	@Override
	public Article getArticleDetail(int articleno) {
		return sqlSession.selectOne("m_article.getArticleDetail", articleno);
	}
}
