pds = []
(1..100).each { |x|
  from = 10**(4 - x.to_s.length)
  to = 10**(5 - x.to_s.length)
  (from...to).each { |y|
    z = x*y
    pds << [x,y,z] if (x.to_s + y.to_s + z.to_s).split(//).sort.join == '123456789'
  }
}
p pds.map{ |i| i[2] }.uniq.inject(:+)
