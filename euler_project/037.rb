require 'mathn'
def truncate x
  (0..(x.to_s.size-1)).map { |n| (x/(10**n)).to_i } | (1..(x.to_s.size-1)).map { |n| x % (10**n) }
end
p (10...1000000).select{ |x| truncate(x).all? { |y| Prime.prime? y } }.reduce(:+)
