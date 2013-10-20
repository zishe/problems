res = 0
(100..999).each do |x|
  (100..999).each do |y|
    p = x * y
    if p.to_s == p.to_s.reverse
      res = p if p > res
      # puts "found #{p} = #{x} * #{y}"
    end
  end
end
puts res
