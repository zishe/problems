require 'prime'

def prime_family?(n, m = 7)
  (2..9).each.select { |x| Prime.prime? n.to_s.gsub('1', x.to_s).to_i }.size == m - 1
end

p Prime.each(2_200_000).select { |x| x.to_s.chars.sort.join.include? '11' }.select { |x| prime_family? x, 8 }.first

# => 121313
