require './lib/transaction.rb'
require './lib/statement.rb'

class User

  def initialize(user_account = Transaction.new)
    @user_account = user_account
  end

  def user_balance
    @user_account.account_balance
  end

  def user_deposit(amount)
    @user_account.deposit(amount)
  end

  def user_withdraw(amount)
    @user_account.withdraw(amount)
  end
  
  def print_user_statement
    statement = @user_account.account_statement
    Statement.new.statement_formatter(statement)
  end
end