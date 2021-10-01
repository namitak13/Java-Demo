package com.cybage.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtility {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newdb", "root" , "root");
			return connection;	
		
	}
}
