package com.user.user.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.user.user.entity.User;

@Mapper
public interface UserMapper {
	public int insert(User user);
	
	public User selectById(int id);
	
	public User login(User user);
	

}
