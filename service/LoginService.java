package com.cybage.service;

import com.cybage.dao.LoginDao;
import com.cybage.dao.LoginDaoImp;
import com.cybage.model.User;

public class LoginService {
	LoginDao loginDao = new LoginDaoImp();
	
	public User login(User user) {
	    return loginDao.login(user);
	}
}
