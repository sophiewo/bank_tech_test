class Statement

  def print
    puts 'date       || credit || debit || balance'
    @statement.each do |hash|
      puts "#{hash[:date]} ||      #{hash[:credit]}||     #{hash[:debit]} ||    #{hash[:account_balance]}"
    end
  end
end
