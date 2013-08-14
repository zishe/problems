sum = 0
(1..999).each do |x|
  sum += x if x % 3 == 0 || x % 5 == 0
end
puts sum
# one line
puts (1..999).select { |x| x % 3 == 0 || x % 5 == 0}.inject(:+)
