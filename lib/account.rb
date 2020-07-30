# Account class
require './lib/statement.rb'

class Account
  def initialize
    @balance = 0
    # @transation = { "transation_date" => date, "account_balance" => @balance }
    @account_statement = Statement.new.account_statement
  end

  def account_balance
    @balance
  end

  def deposit(amount)
    @balance += amount

    @account_statement << { date: date, credit: amount, debit: '       ', account_balance: @balance }
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount

    @account_statement << { date: date, credit: '        ', debit: amount, account_balance: @balance }
  end

  def date
    Time.new.strftime('%d/%m/%Y')
  end
end
