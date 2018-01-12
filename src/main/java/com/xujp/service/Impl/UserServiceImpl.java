package com.xujp.service.Impl;

import com.xujp.dao.UserDao;
import com.xujp.domain.User;
import com.xujp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	/* 
	 * 检验用户登录业务
	 * 
	 */
	public User checkLogin(String username, String password) {
		
		User user = userDao.findByUsername(username);
		if(user != null && user.getPassword().equals(password)){
		
			return user;
		}
		return null;
	}
}
