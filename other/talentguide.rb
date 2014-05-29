def max_sum(numbers)
  (numbers.size).downto(1).map { |x|
    (0..(numbers.size - x)).map { |y|
      (y...(y + x)).map { |z|
        numbers[z]
      }.reduce(:+)
    }
  }.flatten.sort[-1]
end

p max_sum([2, -3, 2, 2, -1, 2, -2, 1])
