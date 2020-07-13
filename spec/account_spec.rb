require 'account'

describe Account do
  it 'exists' do
    expect(Account).to respond_to(:new)
  end

  it 'account starts with a balance of £0' do
    expect(subject.account_balance).to eq(0)
  end
end