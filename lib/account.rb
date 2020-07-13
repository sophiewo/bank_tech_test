# Account class
class Account
  def initialize
    @balance = 0
    # @transation = { "transation_date" => date, "account_balance" => @balance }
    @statement = []
  end

  def account_balance
    @balance
  end

  def deposit(amount)

    @balance += amount
    
    @statement << { :date => date, :credit => amount, :account_balance => @balance }

  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount

    @statement << { :date => date, :debit => amount, :account_balance => @balance }

  end 

  def date
    Time.new.strftime("%d/%m/%Y")
  end
end

# 