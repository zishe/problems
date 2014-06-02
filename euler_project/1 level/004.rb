r = 0
(100...1000).each do |x|
  (x...1000).each do |y|
    p = x * y
    s = p.to_s
    if s == s.reverse
      r = [r, p].max
      # puts "found #{p} = #{x} * #{y}"
    end
  end
end
p r

# 2
p (100..999).to_a.combination(2).map {|x, y| x * y }.select { |p| s = p.to_s; s == s.reverse }.max
