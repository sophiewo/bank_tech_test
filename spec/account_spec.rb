require 'account'

describe Account do
  it 'exists' do
    expect(Account).to respond_to(:new)
  end

  it 'account starts with a balance of £0' do
    expect(subject.account_balance).to eq(0)
  end

  describe '#deposit' do
    it 'allows sum to be deposited into user account' do
      amount = 500
      expect { subject.deposit(amount) }.to change { subject.account_balance }.by amount
    end
  end

  describe '#withdraw' do
    it 'amount to be withdrawn from user account' do
      subject.deposit(100)
      amount = 50
      expect { subject.withdraw(amount) }. to change { subject.account_balance }.by(- amount)
    end

    it 'raises error if not enough funds are available' do
      expect { subject.withdraw(500) }.to raise_error "Insufficient funds" 
    end
  end
end
