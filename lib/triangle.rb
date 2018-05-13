class Triangle

  attr_accessor :side1, :side2, :side3

 def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

  def kind
    validate_triangle


    if side1 == side2 && side2 == side3
      :equilateral
    elsif
      side1 == side2 || side2 == side3|| side1 == side3
      :isoscles
    else
      :scalene

    end
    end

    def validate_triangle
      real_triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
      [side1, side2, side3].each { |side| real_triangle << false if side <= 0}
      raise TriangleError if real_triangle.include?(false)
end

  class TriangleError < StandardError
      # triangle error code
    end


end
