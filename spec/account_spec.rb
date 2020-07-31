
describe Account do

  before do
    Timecop.freeze(Time.now)
  end

  it 'instansiates on new' do
    expect(Account).to respond_to(:new)

    #should be able to inject statement in here to test it initializes with an empty statement
  end

  it 'starts with a balance of £0' do
    expect(subject.account_balance).to eq(0)
  end

  describe '#deposit' do
    it 'allows sum to be deposited into user account' do
      amount = 500
      expect { subject.deposit(amount) }.to change { subject.account_balance }.by amount
    end
  end

  describe '#withdraw' do
    it 'allows amount to be withdrawn from user account' do
      subject.deposit(100)
      amount = 50
      expect { subject.withdraw(amount) }.to change { subject.account_balance }.by(- amount)
    end

    it 'raises error if not enough funds are available' do
      expect { subject.withdraw(500) }.to raise_error 'Insufficient funds'
    end
  end

  describe '#date' do
    it 'returns the date of transaction in the correct format DD/MM/YYYY' do
      expect(subject.date).to eq(Time.now.strftime('%d/%m/%Y'))
    end
  end
end
