puts (1..100).inject(:+) ** 2 - (1..100).map { |x| x*x }.inject(:+)
