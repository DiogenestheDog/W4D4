require "set"

class Array
  def my_uniq
    uniqs = Set[]
    result = []
    self.each do |ele|
      unless uniqs.include?(ele)
        uniqs.add(ele)
        result << ele
      end      
    end
    result
  end

  def two_sum(num)
    results = []
    (0...self.length - 1).each do |i|
      (i+1...self.length). each do |j|
        results << [i,j] if self[i] + self[j] == num
      end
    end
    results
  end

  def my_transpose
    result = []
    (0...self.length).each do |i|
      (0...self.length).each do |j|
        
      end
    end
  end
end