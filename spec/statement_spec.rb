describe Statement do
  it 'instansiates on new' do
    expect(Statement).to respond_to(:new)
  end

  describe '#print' do
    it "returns the users statement" do
      
      expect(subject.print).to output.to_stdout('date       || credit || debit || balance')
    end
  end
end