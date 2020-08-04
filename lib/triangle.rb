class Triangle
  attr_accessor :s1, :s2, :s3, :equilateral, :scalene, :isoceles, :type 
  
  def initialize(s1, s2, s3)
    @s1 = s1 
    @s2 = s2 
    @s3 = s3 
  end 
  
  def kind 
    sum_of_1_and_2 = self.s1 + self.s2 
    sum_of_2_and_3 = self.s2 + self.s3 
    sum_of_1_and_3 = self.s1 + self.s3 
    
    if (self.s1 == 0 || self.s2 == 0 || self.s3 == 0) || (self.s1 < 0 || self.s2 < 0 || self.s3 < 0) || (sum_of_1_and_2 < self.s3 || sum_of_1_and_3 < self.s2 || sum_of_2_and_3 < self.s1) || (sum_of_1_and_2 == self.s3 || sum_of_1_and_3 == self.s2 || sum_of_2_and_3 == self.s1)
      raise TriangleError 
    end 
  end 
  
end
