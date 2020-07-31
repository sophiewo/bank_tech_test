#statement class
class Statement

  attr_reader :account_statement

  def initialize
    @account_statement = []
  end

  def statement_formatter
    puts 'date       || credit || debit || balance'
    @account_statement.each do |hash|
      puts "#{hash[:date]} ||      #{hash[:credit]}||     #{hash[:debit]} ||    #{hash[:account_balance]}"
    end
  end
end

