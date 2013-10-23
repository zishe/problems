(1..10000).each do |i|
#  puts i
  dividers = []
  (1..(i - 1)).each do |j|
    if i % j == 0
      dividers << j
#      puts j
    end
  end
  if dividers.inject(:+) == i
    puts "num #{i}"
    puts "dividers: #{dividers.map(&:to_s).join(" ")} (  #{dividers.length} )"
  end
end





(2..20).each do |n|
  num = 2**(n-1) * (2**n - 1)
  puts "number #{num}"
  i = num
  arr = []
  while i%2 == 0
    i = i/2
    arr << i
    # puts i
  end
  i = i+1
  while i%2 == 0
    i = i/2
    arr << i
    # puts i
  end
  if arr.inject(:+) == num
    puts "SUM CORRECT!"
  end
  found = false
  i = 2
  while not found and i <= num/2
    if num % i == 0 and not arr.include? i
      found = true
      puts "not included divider #{i}"
    end
    i += 1
  end
  puts found ? "NOT PERFECT" : "PERFECT!!!"
  puts ""
end
