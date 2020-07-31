describe Statement do
  it 'instansiates on new' do
    expect(Statement).to respond_to(:new)
  end

  describe '#print' do
    it "returns the users statement" do
      account_double = double [{:date=>"30/07/2020", :credit=>20, :debit=>"       ", :account_balance=>20}]

      account_class_double = double :account_class, new: account_double
       
      # account_statement = [{:date=>"30/07/2020", :credit=>20, :debit=>"       ", :account_balance=>20}]
      expect(subject.print).to start_with('date       || credit || debit || balance')
    end
  end
end

#to test this I need a mock/double of account class!