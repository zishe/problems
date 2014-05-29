require 'prime'

def prime_family?(n, m = 7)
  (2..9).each.select { |x| Prime.prime? n.to_s.gsub('1', x.to_s).to_i }.size == m - 1
end

def get_prime_family(n, m = 7)
  (1..9).each.select { |x| Prime.prime? n.to_s.gsub('0', x.to_s).to_i }.map { |x| n.to_s.gsub('0', x.to_s).to_i } << n
end

p Prime.each(2_200_000).select { |x| x.to_s.chars.sort.join.include? '11' }.select { |x| prime_family? x, 8 }

# 2090021
# 121313
