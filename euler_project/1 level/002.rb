fib = Enumerator.new do |y|
  i, j = 0, 1
  loop do
    i, j = j, i + j
    y.yield i
  end
end

p fib.take_while { |n| n <= 4E6 }.select(&:even?).inject(:+)
