# Transaction Class
class Transaction
  attr_reader :balance, :account_statement

  def initialize
    @balance = 0
    @account_statement = []
  end

  def account_balance
    @balance.to_f.round(2)
  end

  def deposit(amount)
    number = amount.to_f.round(2)
    @balance += number

    @account_statement << { date: date, credit: number, debit: '', account_balance: @balance }
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
