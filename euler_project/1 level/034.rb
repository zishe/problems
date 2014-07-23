def fac(n)
  n > 1 ? n * fac(n - 1) : 1
end
facs = (0..9).map { |n| fac n }
m = (1..10).reduce(:*)

p (3...m).select { |n| n.to_s.chars.map {
    |x| facs[x.to_i] }.reduce(:+) == n
  }.reduce(:+)

# => 40730
