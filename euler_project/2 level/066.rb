require 'mathn'

# p Prime.first(168)

pairs = []
Prime.first(168).each { |d|
  t = Math.sqrt(d)
  f, c = t.floor, t.ceil
  next if f == c
  p "#{d}  #{f}  #{c}"
  r = true
  (1..1000000).take_while { |y|
    (y*f..y*c).take_while { |x|
      # p "#{x}  #{y}"
      if x*x == 1 + d*y*y
        pairs << [x, y, d]
        p "found the pair: #{x} #{y}  for #{d}"
        r = false
      end
      r
    }
    r
  }
}

p pairs.map { |x| x[0] }.max
