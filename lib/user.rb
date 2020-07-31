require './lib/statement.rb'
require './lib/account.rb'

class User

  def initialize(user_account = Account.new)
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
    "Statement"
  end
end