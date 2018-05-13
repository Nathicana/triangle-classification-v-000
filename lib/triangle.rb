class Triangle

  attr_accessor :side1, :side2, :side3

 def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

  def kind(type)

    if type != equilateral|isosceles|scalene
      begin
      raise TriangleError
    rescue TriangleError => error 
      puts error.message
    end 
    else 
      return type.to_sym
    end
end

  class TriangleError < StandardError
      # triangle error code
    end


end
