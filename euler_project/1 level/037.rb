require 'mathn'
def truncate(x)
  m = x.to_s.size
  (0...m).map { |n| (x/(10**n)).to_i } | (1...m).map { |n| x % (10**n) }
end
p (10...1000000).select{ |x| truncate(x).all? { |y| Prime.prime? y } }.reduce(:+)

# => 748317
