package com.ssafy.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.travel.dao.UserDAO;
import com.ssafy.travel.dto.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	
	@Override
	public User getUserOne(String common, String col) {
		return userDAO.getUserOne(common, col);
	}
	
	@Override
	public int userJoin(User user) {
		return userDAO.userJoin(user);
	}
}
