require 'mathn'

# def cycle x
#   (x.to_s[-1] + x.to_s[0..-2]).to_i
# end

# def rotate x
#   y = [x]
#   l = x.to_s.size
#   return y if l < 2
#   (l-1).times { |n| y << cycle(y.last) }
#   y
# end

def rotate x
  z = x.to_s.split(//)
  (0..(x.to_s.size-1)).map { |n| z.rotate(n).join.to_i }
end

p (1...1000000).select{ |x|
  rotate(x).all? { |y| Prime.prime? y }
}.length

