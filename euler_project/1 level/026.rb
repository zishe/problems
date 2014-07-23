require 'prime'

def period_length(n)
  x = 1
  (2..Float::INFINITY).detect { |i|
    x = x * 10 % n
    [0, 1].include? x
  }
end

p Prime.each(1000).map { |n| period_length n }.max
