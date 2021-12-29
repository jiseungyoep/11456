package com.user.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.user.dao.UserDao;
import com.user.user.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public String join(User user) {
		String te = user.getEmail()+user.getEmail2();
		user.setTotalemail(te);
		int cnt = userDao.insert(user);
		
		if(cnt == 1) {
			return "회원가입 성공";
		}else {
			return "회원가입 실패";
		}
	}

	
	public User login(User user) {
		return userDao.login(user);
	}

}
