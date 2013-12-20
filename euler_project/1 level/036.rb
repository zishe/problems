def is_pal? x
  x.to_s.split(//).reverse.join == x
end
p (1...1000000).select { |x|
    is_pal?(x.to_s) && is_pal?(x.to_s(2))
  }.inject(:+)
