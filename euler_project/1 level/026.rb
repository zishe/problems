require 'prime'

def len(n)
  x = 1
  (2..n).each { |i|
    x = x * 10 % n
    break if x == 1 || x == 0
  }
  i
end

r = []
Prime.each(10000).each do |n|
  r << len(n)
end
p r.max
