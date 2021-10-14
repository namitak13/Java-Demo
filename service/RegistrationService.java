package com.cybage.service;

import com.cybage.dao.RegistrationDao;
import com.cybage.dao.RegistrationDaoImp;
import com.cybage.model.User;

public class RegistrationService {
	RegistrationDao registrationDao = new RegistrationDaoImp();
	public void registerUser(User user) {
		registrationDao.registerUser(user);
	}
}
