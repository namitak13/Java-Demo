package com.cybage.service;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.cybage.model.User;

@Service
public class LoginService {
	
	private List<User> userList;

	public LoginService() {
		super();
		// TODO Auto-generated constructor stub
		userList = new  ArrayList<User>();
		userList.add(new  User("mark" , "mark"));
	}

	public boolean checkUser(@Valid User user) {
		// TODO Auto-generated method stub
		System.out.println(user);
		/*if(userList.contains(user))
		{
			return true;
		}
		else
		{
			return false;
		}
		
		for(User userCheck : userList)
		{
			if(userCheck.getUsername() == user.getUsername() && userCheck.getPassword() == user.getPassword())
			{
				return true;
			}
		}
		return false;
		*/
		System.out.println(user.getUsername() + "   " + user.getPassword());
		if(user.getUsername()=="mark" && user.getPassword()=="mark")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	

}
