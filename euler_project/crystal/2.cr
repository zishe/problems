# module Fibo
#   def self.enum
#     Enumerator.new do |y|
#       i, j = 0, 1
#       loop { i, j = j, i + j; y.yield i }
#     end
#   end
# end

# # p Fibo.enum.take_while { |n| n < 4E10 }.select(&:even?).sum
# # => 4613732

# x, y, sum = 1, 1, 0
# while sum < 4E10
#   sum += x + y
#   x, y = x + 2*y, 2*x + 3*y
# end

# p sum


t = gets.strip.to_i
data = t.times.map { gets.strip.to_i }

module Fibo
  def self.enum
    Enumerator.new do |y|
      i, j = 0, 1
      loop { i, j = j, i + j; y.yield i }
    end
  end
end

data.each { |number| p Fibo.enum.take_while { |n| n < number }.select(&:even?).sum }
