require 'prime'

def len(n)
  x = 1
  for i in 2..n
    x = x * 10 % n
    break if x == 1 || x == 0
  end
  i
end

r = []
Prime.each(10000).each do |n|
  r << len(n)
end
p r.max
