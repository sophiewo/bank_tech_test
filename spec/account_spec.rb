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
      expect { subject.deposit(amount) }.to change { subject.account_balance}.by amount
    end
  end
end