package com.ssafy.travel.service;

import com.ssafy.travel.dto.User;

public interface UserService {
	User getUserOne(String common, String col);
	int userJoin(User user);
}
