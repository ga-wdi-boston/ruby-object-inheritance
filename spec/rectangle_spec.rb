require_relative '../lib/rectangle.rb'

describe 'Rectangle' do
  subject(:rectangle) { Rectangle.new(4, 10) }

  it 'is a rectangle' do
    expect(subject).to be_a(Rectangle)
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
end

  # describe ".calculate_area" do
  #   it "should calculate area for a given side length" do
  #     expect(Rectangle.new(4,10).calculate_area.round(2)).to eq(100.00)
  #     expect(Rectangle.new(6,5).calculate_area.round(2)).to eq(64.95)
  #     expect(Rectangle.new(9,13).calculate_area.round(2)).to eq(1044.73)
  #   end
  #   end
# end
