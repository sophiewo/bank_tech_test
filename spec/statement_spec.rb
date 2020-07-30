require 'statement'
require 'timecop'

describe Statement do
  it 'instansiates on new' do
    expect(Statement).to respond_to(:new)
  end
end