p (2..100).each_with_object([]) { |x, s|
  (1000/x...10000/x).each { |y|
    s << [x,y,x*y] if [x,y,x*y].map(&:to_s).reduce(:+).chars.sort.join == '123456789'
  }
}.map(&:last).uniq.reduce(:+)
