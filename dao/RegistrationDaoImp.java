package com.cybage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cybage.model.User;
import com.cybage.utility.JDBCUtility;

public class RegistrationDaoImp implements RegistrationDao {

	public void registerUser(User user) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = JDBCUtility.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement("Insert into User(firstname, lastname, email, user_username, user_password) values (?,?,?,?,?) ");
			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getLastname());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getUsername());
			preparedStatement.setString(5, user.getPassword());
			preparedStatement.executeUpdate();
			
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
