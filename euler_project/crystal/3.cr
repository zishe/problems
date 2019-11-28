t = gets.strip.to_i
data = t.times.map { gets.strip.to_i }

require 'mathn'

data.each do |number|
  p number.prime_division.map{ |x, _| x }.max
end
