t = gets.strip.to_i
data = t.times.map { gets.strip.to_i }

require 'mathn'

data.each do |number|
  p (100..Math.sqrt(number)).to_a.combination(2)
    .map { |x, y| x * y }
    .select { |p| s = p.to_s; s == s.reverse }
    .max
end
