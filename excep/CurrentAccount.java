package com.cybage.Exception;

public class CurrentAccount extends Account {

	
	
	
	public CurrentAccount() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CurrentAccount(String accountType, int accountNumber, double minimumBalance, double currentBalance) {
		super(accountType, accountNumber, minimumBalance, currentBalance);
		// TODO Auto-generated constructor stub
	}

	@Override
	public double calculateInterest() {
		// TODO Auto-generated method stub
		return super.calculateInterest() * 0.3;
	}

	
}
