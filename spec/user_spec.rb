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
end