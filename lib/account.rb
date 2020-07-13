require 'time'

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
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount
  end 

  def date
    transaction_date = Time.new.strftime("%d/%m/%Y")
  end
end