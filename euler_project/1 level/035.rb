require 'mathn'

def rotate(x)
  y = x.to_s.chars
  (0...x.to_s.size).map { |i| y.rotate(i).join.to_i }
end

p (1...1000000).select{ |x|
  rotate(x).all?(&Prime.method(:prime?))
}.length

# => 55
