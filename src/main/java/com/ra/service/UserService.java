package com.ra.service;

import com.ra.pojo.User;

public interface UserService {
	public User userLogin(String userName,String userPassword);
	public void addUser(User user);
	public void changePw(String password);
}
