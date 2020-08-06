# Statement class
class Statement
  attr_reader :account_statement

  def statement_formatter(account_statement)
    puts 'date || credit || debit || balance'
    account_statement.each do |hash|
      puts "#{hash[:date]} || #{hash[:credit]}.00|| #{hash[:debit]}.00 ||#{hash[:account_balance]}.00"
    end
  end
end
