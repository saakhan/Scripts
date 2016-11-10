package ca.uwo.csd.cs2212.USERNAME;

public class BankAccount {

  private double balance;

  public BankAccount(double balance) {
    this.balance = balance;
  }

  public double debit(double amount) {
    if (balance < amount) {
      amount = balance;
    }

    balance -= amount;
    return amount;
  }

}

##https://www.youtube.com/watch?v=IZ99VwrF6t4
