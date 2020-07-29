package com.ssafy.travel.dto;

public class Book {
	private int bookno;
	private String title;
	private String writer;
	private String writedate;
	private String province;
	private String city;
	private String startdate;
	
	public Book() {
		super();
	}

	public Book(int bookno, String title, String writer, String writedate, String province, String city,
			String startdate) {
		super();
		this.bookno = bookno;
		this.title = title;
		this.writer = writer;
		this.writedate = writedate;
		this.province = province;
		this.city = city;
		this.startdate = startdate;
	}
	
	public int getBookno() {
		return bookno;
	}
	public void setBookno(int bookno) {
		this.bookno = bookno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	@Override
	public String toString() {
		return "Book [bookno=" + bookno + ", title=" + title + ", writer=" + writer + ", writedate=" + writedate
				+ ", province=" + province + ", city=" + city + ", startdate=" + startdate + "]";
	}
	
}
