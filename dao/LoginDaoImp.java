package com.cybage.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cybage.model.User;
import com.cybage.utility.JDBCUtility;

public class LoginDaoImp implements LoginDao {

	@Override
	public User login(User user) {
		User returnParameter = new User();
		String username= user.getUsername();
		String password = user.getPassword();
		int id = user.getId();
		String userType = user.getUsertype();
		try {
			Connection connection = JDBCUtility.getConnection();
			String query = "select * from user where username= '"+username+"' and password='"+password+"'";
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				returnParameter.setId(id);
				returnParameter.setUsername(username);
				returnParameter.setPassword(password);	
			}
		
			
		}catch(SQLException  e) {
			e.printStackTrace();
		}
		return returnParameter;
		
	}
	
}
