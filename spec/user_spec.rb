require 'user'

describe User do

  describe '#show_balance' do
    it 'shows the user their balance' do
      expect(subject.show_balance).to eq(0)
    end
  end
end