package com.ra.dao;

import com.ra.pojo.User;

public interface UserDao {
	User userLogin(String email,String userPassword);
}
