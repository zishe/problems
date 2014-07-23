require 'mathn'

p (2..7).each_with_object([]) { |n, b|
  b << (1..n).to_a.permutation.to_a.map { |x|
    x.map(&:to_s).join.to_i
  }.sort.reverse.detect { |x| Prime.prime?(x) }
}.compact.sort.last

# => 7652413
