require_relative 'rectangle'

# Class that describes a square
class Square < Rectangle
  def initialize(side_length)
    super(side_length, side_length)
  end
end
