describe Statement do
  it 'instansiates on new' do
    expect(Statement).to respond_to(:new)
  end

  describe '#statement_formatter' do
    it 'provides format for users statement' do
      account_statement = [{ date: '30/07/2020', credit: 20, debit: '', account_balance: 20 }]
      expect { subject.statement_formatter(account_statement) }.to output { 'date       || credit || debit || balance' }.to_stdout
    end
  end
end
