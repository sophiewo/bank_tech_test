# Statement class
class Statement
  attr_reader :account_statement

  def statement_formatter(account_statement)
    puts 'date || credit || debit || balance'
    account_statement.each do |hash|
      
      puts "#{hash[:date]} || #{hash[:credit]}|| #{hash[:debit]} ||#{hash[:account_balance]}"
    end
  end
end
