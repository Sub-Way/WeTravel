package com.ssafy.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.travel.dto.User;
import com.ssafy.travel.service.UserService;

@RestController
@RequestMapping("api/user/*")
public class UserController {
	@Autowired
	UserService userService;

	@PostMapping("api/user/login")
	@ResponseBody
	public User login(@RequestBody User user) {
		String col = "email";
		User userIdCheck = userService.getUserOne(user.getEmail(), col);
		User errorState = new User("No Match", "No Match", "No Match", "No Match");
		if (userIdCheck == null)
			return errorState;
		else {
			if (user.getEmail().equals(userIdCheck.getEmail())) {
				if (user.getPassword().equals(userIdCheck.getPassword())) {
					return userIdCheck;
				}
				else
					return errorState;
			}
			else
				return errorState;
		}
	}
	@PostMapping("api/user/signUp")
	@ResponseBody
	public int signUp(@RequestBody User user) {
		int result = 0;
		String col = null;
		
		col = "email";
		User userIdCheck = userService.getUserOne(user.getEmail(), col);
		if (userIdCheck != null)
			result = 2;
		
		col = "nickname";
		User userNicknameCheck = userService.getUserOne(user.getNickname(), col);
		if (userNicknameCheck != null)
			result = 3;
		
		if (result < 2)
			result = userService.userJoin(user);
		
		return result;
	}
}
