require 'player'

describe Hp do
  subject(:HP) { described_class.new }
  it 'gives players a name' do
    expect(subject.name).to eq 'andrew'
  end
end
