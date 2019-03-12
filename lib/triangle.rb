require 'pry'
class Triangle

  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
  if ((self.s1 + self.s2) <= self.s3) || (self.s2 + self.s3) <= self.s1
     begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
    if self.s1 == self.s2 && self.s2 == self.s3
      :equilateral
    elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s3 == self.s1
      :isosceles
    elsif
      self.s1 != self.s2 && self.s2 != self.s3 && self.s3 != self.s1
      :scalene
    end
  end
end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end
