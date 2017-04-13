# frozen_string_literal: true

require_relative 'shape'

class Rectangle < Shape
  def initialize(length, width)
    @length = length
    @width = width
    @num_sides = 4
  end

  def calculate_area
    @length * @width
  end
end

rectangle1 = Rectangle.new(3, 4)
p rectangle1.calculate_area

# class Square < Rectangle
#   def initialize(side_length)
#     super(side_length, side_length)
#   end
# end

class Square
  def initialize(side_length)
    @side_length = side_length
    # super(side_length, side_length)
  end

  def calculate_area
    @side_length * @side_length
  end
end

square1 = Square.new(4)
p square1.calculate_area


class Rectangle < Shape
  attr_accessor :side_width
  def initialize(side_length, side_width)
  super(4, side_length)
      @side_width = side_width
  end

  def calculate_area
    @side_width * @side_length
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end
