require 'account'

describe Account do
  it 'exists' do
    expect(Account).to respond_to(:new)
  end
end