t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
end

module Fibo
  def self.enum
    Enumerator.new do |y|
      i, j = 0, 1
      loop { i, j = j, i + j; y.yield i }
    end
  end
end

p Fibo.enum.take_while { |n| n < 4E6 }.select(&:even?).inject(:+)
