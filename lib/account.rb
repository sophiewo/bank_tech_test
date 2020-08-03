# Account class
# require './lib/statement.rb'

class Account

  attr_reader :balance, :account_statement

  def initialize
    @balance = 0
    @account_statement = []
  end

  def account_balance
    @balance
  end

  def deposit(amount)
    @balance += amount

    @account_statement << { date: date, credit: amount, debit: '', account_balance: @balance }
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount

    @account_statement << { date: date, credit: '', debit: amount, account_balance: @balance }
  end

  def date
    Time.new.strftime('%d/%m/%Y')
  end
end
