p (1..100).reduce(:+)**2 - (1..100).map { |x| x*x }.reduce(:+)
p (1..100).reduce(:+)**2 - (1..100).inject { |s, x| s + x*x }
