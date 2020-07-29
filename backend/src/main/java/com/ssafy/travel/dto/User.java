package com.ssafy.travel.dto;

public class User {
	private String email;
	private String password;
	private String nickname;
	private String introduce;
	
	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + ", nickname=" + nickname + ", introduce=" + introduce
				+ "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
