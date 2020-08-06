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

  describe '#to_2_decimal_places' do
    it "formats integer to 500.00" do
      expect(subject.to_2_decimal_places(500)).to eq(500.00)
    end
  end
end
