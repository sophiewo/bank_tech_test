# Account class
class Account
  def initialize
    @balance = 0
  end

  def account_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
