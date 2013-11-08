m = (1..10).inject(:*)
def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end
facs = (0..9).map{|n| factorial(n)}

p (3...m).select { |n| n.to_s.split(//).map {
    |x| facs[x.to_i] }.inject(:+) == n
  }.inject(:+)
