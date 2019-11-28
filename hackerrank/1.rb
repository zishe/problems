size = gets.strip.to_i

all = size.times.map { gets.strip.to_i }

all.each do |one|
  puts (1...one).select { |x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)
end
