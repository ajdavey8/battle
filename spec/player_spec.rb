require 'player'

describe Player do
  subject(:player) { described_class.new('andrew') }
  it 'gives players a name' do
    expect(subject.name).to eq 'andrew'
  end
end
