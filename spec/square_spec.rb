require_relative '../lib/square.rb'

describe 'Square' do
  subject(:square) { Square.new(4) }

  it 'is a square' do
    expect(subject).to be_a(Square)
  end

  it 'has required attributes' do
    expect(subject.instance_variables).to include(:@num_sides)
    expect(subject.instance_variables).to include(:@side_length)
  end

  it 'has getters for @num_sides, @side_length' do
    expect { subject.num_sides }.not_to raise_error
    expect { subject.side_length }.not_to raise_error
  end

  it 'has no setter for @num_sides' do
    expect { subject.num_sides = 4 }.to raise_error(NoMethodError)
  end

  it 'has setters for @side_length' do
    expect { subject.side_length = 4 }.not_to raise_error
  end

  it 'has the correct area' do
    expect(subject.calculate_area.floor).to eq(16)
  end
end
