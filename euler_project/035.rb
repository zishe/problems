require 'mathn'

def rotate x
  z = x.to_s.split(//)
  (0..(x.to_s.size-1)).map { |n| z.rotate(n).join.to_i }
end

p (1...1000000).select{ |x|
  rotate(x).all?(&Prime.method(:prime?))
}.length
