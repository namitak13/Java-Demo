package com.cybage.Exception;

public class Employee {
	
	private String name;
	private Account account;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(String name, Account account) {
		super();
		this.name = name;
		this.account = account;
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account saving = new FixedDepositeAccount("saving" , 101 , 500 , 5000);
		Account current = new CurrentAccount("current" , 102 , 200 , 4000);
		
		Employee mark = new Employee("mark" , saving);
		Employee dave = new Employee("dave" , current);
		
		System.out.println(saving.calculateInterest());
		System.out.println(current.calculateInterest());
	}

}
