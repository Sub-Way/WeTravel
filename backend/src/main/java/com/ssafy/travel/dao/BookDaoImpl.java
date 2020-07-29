package com.ssafy.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.travel.dto.Book;

@Repository
public class BookDaoImpl implements BookDao{
	@Autowired
	SqlSession sqlSession;

	@Override
	public int registBook(Book book) {
		return sqlSession.insert("m_book.registBook",book);
	}

	@Override
	public List<Book> getBookListByScore(String province, String city) {
		Book b = new Book();
		b.setProvince(province);
		b.setCity(city);
		return sqlSession.selectList("m_book.getBookListByScore", b);
	}

	@Override
	public int deleteBook(int bookno) {
		return sqlSession.delete("m_book.deleteBook",bookno);
	}

	@Override
	public int modifyBook(Book book) {
		return sqlSession.update("m_book.modifyBook",book);
	}

	@Override
	public Book getBookDetail(int bookno) {
		return sqlSession.selectOne("m_book.getBookDetail", bookno);
	}

	@Override
	public List<Book> getBookList(String province, String city, int month) {
		Book b = new Book();
		b.setProvince(province);
		b.setCity(city);
		b.setStartdate(month+"");
		return sqlSession.selectList("m_book.getBookList", b);
	}
}
