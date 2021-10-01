package com.cybage.Main;

import java.util.Scanner;

import com.cybage.model.Product;
import com.cybage.service.ProductService;

public class ProductDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String name = "";
		int price;
		int quantity;
		
		//Product product = new Product("milk" , 20 , 500);
		
		//ProductService.addProduct(product);
		
		//ProductService.displayProduct();
		
		//ProductService.updateProduct("milk" , 25);
		
		//ProductService.deleteProduct("milk");
	while(true) {	
		System.out.println("Select from Menu  : 1) Add 2) display products 3) Update product price 4)Delete");
		
		Scanner scanner = new Scanner(System.in);
		
		
		
		int response = scanner.nextInt();
		
		switch (response) {
		  case 1:
		    System.out.println("Enter Product price :");
		    price = scanner.nextInt();
		    System.out.println("Enter Product quantity :");
		    quantity = scanner.nextInt();
		    System.out.println("Enter Product name :");
		    name = scanner.next();
		    Product product = new Product(name , price , quantity);
		    ProductService.addProduct(product);
		    break;
		  case 2:
			ProductService.displayProduct();
		    break;
		  case 3:
			System.out.println("Enter Product name that you want to update :");
			name = scanner.next();
			System.out.println("Enter the updated Product price :");
			price = scanner.nextInt();
			ProductService.updateProduct(name , price);
		    break;
		  case 4:
			System.out.println("Enter Product name you want to delete");
			name = scanner.next();
			ProductService.deleteProduct(name);
		}
	}
	} 

}
