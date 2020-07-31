require 'user'

describe User do

  describe '#show_user_balance' do
    it 'shows the user their starting balance of £0' do
      expect(subject.show_user_balance).to eq(0)
    end
  end

  describe '#user_deposit' do
    it 'allows sum to be deposited into user account' do
      amount = 500
      expect { subject.user_deposit(amount) }.to change { subject.show_user_balance }.by amount
    end
  end

  describe '#user_withdraw' do
    it 'allows amount to be withdrawn from user account' do
      subject.user_deposit(100)
      amount = 50
      expect { subject.user_withdraw(amount) }.to change { subject.show_user_balance }.by(- amount)
    end

    it 'raises error if not enough funds are available' do
      expect { subject.user_withdraw(500) }.to raise_error 'Insufficient funds'
    end
  end
end