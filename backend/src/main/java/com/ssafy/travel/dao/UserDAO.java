package com.ssafy.travel.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.travel.dto.User;

@Repository
public class UserDAO {
	@Autowired
	public SqlSession sqlSession;
	
	public User getUserOne(String common, String col) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		if (col.equals("email")) {
			map.put("email", common);
		}
		else if (col.equals("nickname")) {
			map.put("nickname", common);
		}
		return sqlSession.selectOne("getUserOne", map);
	}
	
	public int userJoin(User user) {
		return sqlSession.insert("userJoin", user);
	}
}
