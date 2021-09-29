package com.cybage.Exception;

public class Account {

	private String accountType;
	private int accountNumber;
	private double minimumBalance;
	private double currentBalance;
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(String accountType, int accountNumber, double minimumBalance, double currentBalance) {
		super();
		this.accountType = accountType;
		this.accountNumber = accountNumber;
		this.minimumBalance = minimumBalance;
		this.currentBalance = currentBalance;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public int getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	public double getMinimumBalance() {
		return minimumBalance;
	}
	public void setMinimumBalance(double minimumBalance) {
		this.minimumBalance = minimumBalance;
	}
	public double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	
	public double calculateInterest() {
		return currentBalance;
	}
	
	public void withdraw(double amount) {
		try {
			if(amount > currentBalance)
			{
				throw new InsufficientBalanceException("Balance is insufficient");
			}
		}
		catch(InsufficientBalanceException e)
		{
			System.out.println(e.getMessage());
		}
	}
}
