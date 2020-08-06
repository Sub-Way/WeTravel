package com.ssafy.travel.dto;

public class Article {
	private int articleno;
	private int bookno;
	private String title;
	private String writedate;
	private double score;
	private int score_count;
	private String text;
	private String traveldate;
	private int day;
	
	public Article() {
		super();
	}

	public Article(int articleno, int bookno, String title, String writedate, double score, int score_count, String text,
			String traveldate, int day) {
		super();
		this.articleno = articleno;
		this.bookno = bookno;
		this.title = title;
		this.writedate = writedate;
		this.score = score;
		this.score_count = score_count;
		this.text = text;
		this.traveldate = traveldate;
		this.day = day;
	}
	
	public int getArticleno() {
		return articleno;
	}
	public void setArticleno(int articleno) {
		this.articleno = articleno;
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
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public int getScoreCount() {
		return score_count;
	}
	public void setWeather(int score_count) {
		this.score_count = score_count;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getTraveldate() {
		return traveldate;
	}
	public void setTraveldate(String traveldate) {
		this.traveldate = traveldate;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
	@Override
	public String toString() {
		return "Article [articleno=" + articleno + ", bookno=" + bookno + ", title=" + title + ", writedate="
				+ writedate + ", score=" + score + ", score_count=" + score_count + ", text=" + text + ", traveldate="
				+ traveldate + ", day=" + day + "]";
	}
	
}
