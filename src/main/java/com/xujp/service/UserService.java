package com.xujp.service;


import com.xujp.domain.User;

//Service层接口
public interface UserService {
	
	//检验用户登录
	User checkLogin(String username, String password);

}
