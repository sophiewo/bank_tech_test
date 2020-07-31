require 'user'

describe User do

  describe '#show_user_balance' do
    it 'shows the user their balance' do
      expect(subject.show_user_balance).to eq(0)
    end
  end
end