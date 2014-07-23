def divisors_sum(num)
  (1..num/2).select { |i| num % i == 0 }.reduce(:+)
end

nums = []
(2...10000).each do |i|
  sum = divisors_sum i
  if sum > 0 && divisors_sum(sum) == i && sum != i && !nums.include?(sum)
    puts "numbers: #{i} #{sum}"
    nums << sum << i
  end
end

p nums.reduce(:+) # => 31626
