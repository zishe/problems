def divisors_sum num
  (1..(num / 2)).select{ |i| num % i == 0 }.inject(:+)
end

nums = []
(2...10000).each do |i|
  sum = divisors_sum i
  if sum > 0 and divisors_sum(sum) == i and sum != i and !nums.include?(sum)
    puts "numbers: #{i} #{sum}"
    nums << sum << i
  end
end

p nums.inject(:+)
