package com.ra.seviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ra.dao.UserDao;
import com.ra.pojo.User;
import com.ra.service.UserService;
@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	public User userLogin(String email, String password) {
		User u = userDao.userLogin(email, password);
		 System.out.println(email+password+"’‚ «Service"+u);
		 return u;
	}
	public void addUser(User user) {
		userDao.addUser(user);
	}

}
