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

    @statement << { date: date, credit: amount, debit: '       ', account_balance: @balance }
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount

    @statement << { date: date, credit: '        ', debit: amount, account_balance: @balance }
  end

  def date
    Time.new.strftime('%d/%m/%Y')
  end

  # def print
  #   puts 'date       || credit || debit || balance'
  #   @statement.each do |hash|
  #     puts "#{hash[:date]} ||      #{hash[:credit]}||     #{hash[:debit]} ||    #{hash[:account_balance]}"
  #   end
  # end
end
