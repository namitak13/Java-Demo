package com.cybage.Exception;

import java.util.InputMismatchException;
import java.util.Scanner;

class NegativeException extends Exception{

	public NegativeException(String string) {
		super(string);
		// TODO Auto-generated constructor stub
	}
}

public class ExceptionsKeyWordDemo {

	public static void checkNumber(int number) throws NegativeException {
		
			if(number < 0)
			{
				throw new NegativeException("Negative Numbers not allowed");
			}
			System.out.println("All good");
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		
		int number = scanner.nextInt();
		
		try {
			checkNumber(number);
		} 
		catch (NegativeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		catch (InputMismatchException e) {
			System.out.println("Only Numbers are allowed");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			System.out.println("Inside finally block");
		}
	}

}
