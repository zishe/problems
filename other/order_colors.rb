# s = '00ffff
# 000000
# 0000ff
# ff00ff
# 808080
# 008000
# 00ff00
# 800000
# 000080
# 808000
# 800080
# ff0000
# c0c0c0
# 008080
# ffffff
# ffff00'

# p s.split("\n").to_a

class Page
  attr_accessor :item_nums
  def initialize(nums)
    @item_nums = nums
  end
end

arr = [Page.new([1,2,3,4,5])]
arr << Page.new([7,5,9,3])

p arr.select{ |x| x.item_nums.include?(4) }
