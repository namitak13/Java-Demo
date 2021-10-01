package com.cybage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import com.cybage.jdbcDemo.JDBCUtility;
import com.cybage.model.Product;

public class ProductDAO {

	public static void addProduct(Product product)
	{
		int count = 0;
		try
		{
			Connection connection = JDBCUtility.getConnection();
			try(	PreparedStatement preparedStatement = 
					connection.prepareStatement("insert into Product ( product_name , product_price , product_quantity) values (?,?,?)");
					) 
			{
				preparedStatement.setString(1, product.getName());
				preparedStatement.setInt(2, product.getPrice());
				preparedStatement.setInt(3, product.getQuantity());
				count = preparedStatement.executeUpdate();
				System.out.println(count + " rows affected");
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public static void displayProduct()
	{
		try {
			Connection connection = JDBCUtility.getConnection();
			try(	Statement statement = connection.createStatement();
					ResultSet resultSet = statement.executeQuery("select * from Product");	)
			{
				ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
				int columnCount = resultSetMetaData.getColumnCount();
				
				for(int i=1; i<=columnCount; i++)
				{
					System.out.print(resultSetMetaData.getColumnName(i) + "\t");
				}
				System.out.println();
				while(resultSet.next())
				{
					System.out.println(resultSet.getInt(1) + "\t" + resultSet.getString(2) + "\t" + resultSet.getString(3) + "\t"+resultSet.getInt(4));
	
				}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static void updateProduct(String name , int price)
	{
		int count = 0;
		try
		{
			Connection connection = JDBCUtility.getConnection();
			try(	PreparedStatement preparedStatement = 
					connection.prepareStatement("update Product set product_price = ? where product_name = ?");
					) 
			{
				preparedStatement.setInt(1, price);
				preparedStatement.setString(2, name);
				count = preparedStatement.executeUpdate();
				System.out.println(count + " rows affected");
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public static void deleteProduct(String name)
	{
		int count = 0;
		try
		{
			Connection connection = JDBCUtility.getConnection();
			try(	PreparedStatement preparedStatement = 
					connection.prepareStatement("delete from Product where product_name = ?");
					) 
			{
				preparedStatement.setString(1, name);
				count = preparedStatement.executeUpdate();
				System.out.println(count + " rows affected");
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}
