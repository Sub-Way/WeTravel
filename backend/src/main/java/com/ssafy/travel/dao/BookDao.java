package com.ssafy.travel.dao;

import java.util.List;

import com.ssafy.travel.dto.Book;

public interface BookDao {
	public int registBook(Book book); 
	public List<Book> getBookListByScore(String province, String city);
	public int deleteBook(int bookno);
	public int modifyBook(Book book);
	public Book getBookDetail(int bookno);
	public List<Book> getBookList(String province, String city, int month);
}
