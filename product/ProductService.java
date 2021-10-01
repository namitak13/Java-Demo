package com.cybage.service;

import com.cybage.dao.ProductDAO;
import com.cybage.model.Product;

public class ProductService {
	
	public static void addProduct(Product product)
	{
		ProductDAO.addProduct(product);
	}
	
	public static void displayProduct()
	{
		ProductDAO.displayProduct();
	}
	
	public static void updateProduct(String name , int price)
	{
		ProductDAO.updateProduct(name , price);
	}
	
	public static void deleteProduct(String name)
	{
		ProductDAO.deleteProduct(name);
	}
}
