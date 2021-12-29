package com.user.user.dao;


import com.user.user.entity.User;

public interface UserDao {
	
	public int insert(User user);
	
	public User selectById(int id);
	
	public User login(User user);

}
