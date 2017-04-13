# Class that describes a shape with sides of equal length
class Shape
  attr_reader :num_sides
  attr_accessor :color, :side_length

  def initialize(num_sides, side_length)
    @num_sides = num_sides
    @side_length = side_length
  end

  def calculate_area
    (@num_sides * @side_length**2) / (4 * Math.tan(Math::PI / @num_sides))
  end
end
