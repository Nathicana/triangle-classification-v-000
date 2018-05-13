class Triangle
  
  class TriangleError < StandardError
      # triangle error code
    end

  attr_accessor :side1, :side2, :side3

 def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

  def kind(type)
    return type.to_sym
  end


end

