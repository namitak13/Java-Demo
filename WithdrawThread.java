package com.cybage.Thread;

class InsufficientBalanceException extends Exception {

	public InsufficientBalanceException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}
	
	
}

class BankAccount{
	
	private static double balance;

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	public void withdraw(double amount)
	{
		try {
			if(amount > balance )
			{
				throw new InsufficientBalanceException("Insufficient Balance");
			}
			balance = balance - amount;
			System.out.println("Withdraw Successfull .... your balance is : " + balance);
		}
		catch(InsufficientBalanceException e)
		{
			System.out.println(e.getMessage());
		}
	}
}


class Member extends Thread{
	
	double amount;
	BankAccount bankAccount;

	public Member(BankAccount bankAccount , double amount) {
		super();
		this.bankAccount = bankAccount;
		this.amount = amount;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		synchronized(bankAccount)
		{
			bankAccount.withdraw(amount);
		}
	}
}

public class WithdrawThread {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BankAccount account = new BankAccount();
		account.setBalance(5000);
		
		Member member = new Member(account , 3000);
		Member member1 = new Member(account , 3000);
		member.start();
		member1.start();
		
	}

}
