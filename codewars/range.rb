GroupByDifference.new([5, 32, 5, 1, 31, 70, 30, 8]).find(3) #=> [5,5,8,30,31,32]

class GroupByDifference

  def initialize arr
    @arr = arr
  end

  def find c
    @arr.sort.map.with_index { |x, i|  }
  end
end
