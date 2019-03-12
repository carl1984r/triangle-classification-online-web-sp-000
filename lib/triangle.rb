require 'pry'
class Triangle

  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.s1 == self.s2 && self.s2 == self.s3 && self.s3 == self.s1
      :equilateral
    elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s3 == self.s1
      :isosceles
    elsif
      self.s1 != self.s2 && self.s2 != self.s3 && self.s3 != self.s1
      :scalene
    else
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end
