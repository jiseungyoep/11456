package com.user.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.user.entity.User;
import com.user.user.mapper.UserMapper;

@Repository
public class UserDaoMybatisMapper implements UserDao {
	
	@Autowired
	UserMapper userMapper;

	@Override
	public int insert(User user) {
		return userMapper.insert(user);
	}

	@Override
	public User selectById(int id) {
		return userMapper.selectById(id); 
	}

	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

}
