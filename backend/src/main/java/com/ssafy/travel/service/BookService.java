package com.ssafy.travel.service;

import java.util.List;

import com.ssafy.travel.dto.Book;

public interface BookService {
	public boolean registBook(Book book); 
	public List<Book> getBookList(String province, String city, int month);
	public List<Book> getBookListByScore(String province, String city);
	public boolean deleteBook(int bookno);
	public Book getBookDetail(int bookno);
	public boolean modifyBook(Book book);
}
