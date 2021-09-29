package com.cybage.Exception;

import java.util.Scanner;

class NegativeNumberException extends Exception{

	public NegativeNumberException(String string) {
		super(string);
		// TODO Auto-generated constructor stub
	}
}

public class NegativeNumber {

	public static void findSqrt(int number)
	{
		try
		{
			if(number < 0)
			{
				throw new NegativeNumberException("Negative Numbers Not Allowed");
			}
			System.out.println("Square root is : "+ Math.sqrt(number));
		}
		catch(NegativeNumberException e)
		{
				System.out.println(e.getMessage());
		}
	}
		

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter number to find root");
		int number = scanner.nextInt();
		
		findSqrt(number);
		
	}
	

}
