require 'mathn'

a = 0
(2..7).each { |n|
  (1..n).to_a.permutation.to_a.map { |x|
      x.map(&:to_s).join.to_i
    }.sort.reverse.each { |x|
    if Prime.prime?(x)
      a = [x, a].max
      break
    end
  }
}
p a
