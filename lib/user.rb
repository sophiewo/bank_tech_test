require './lib/statement.rb'
require './lib/account.rb'

class User

  def initialize(user_account = Account.new)
    @user_account = user_account
  end

  def show_user_balance
    @user_account.account_balance
  end
end