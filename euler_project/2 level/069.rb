puts (2..10000).map { |n|
  [n, n.to_f / (1...n).to_a.keep_if { |i| i == 1 || n % i != 0 }.size]
}.sort_by(&:last).last
