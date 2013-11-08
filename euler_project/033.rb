nums = []
(10..99).each { |x|
  (10..99).each { |y|
    nums << [x,y] if y.to_f/x == (y%10).to_f/(x/10) and x.to_f/y < 1 and x%10 == y/10
  }
}
p nums
p nums.map { |x| x[0].to_f/x[1] }.inject(:*).round(10)
