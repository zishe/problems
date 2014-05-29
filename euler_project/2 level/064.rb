# √2=[1;(2)], period=1
# √3=[1;(1,2)], period=2
# √5=[2;(4)], period=1
# √6=[2;(2,4)], period=2
# √7=[2;(1,1,1,4)], period=4
# √8=[2;(1,4)], period=2
# √10=[3;(6)], period=1
# √11=[3;(3,6)], period=2
# √12= [3;(2,6)], period=2
# √13=[3;(1,1,1,1,6)], period=5
# √14=[3;(1,2,1,6)], period=4
# √42 = [6;2,12]
res = 0
ps = (2..Float::INFINITY).take_while { |x| x*x < 10000 }.map { |x| x*x }
(2..Float::INFINITY).take_while { |x| x < 10000 }.map { |n|
  period, d, m = 0, 1, 0
  a = a0 = Math.sqrt(n).floor
  # p "a0: #{a0}, n: #{n}"
  next if ps.include? n
  while (a - 2.0*a0).abs > 0.00000000001 do
    m = d*a - m
    d = (n - m * m) / d
    a = (a0 + m) / d
    # p "mda::   #{m} #{d} #{a}"
    period += 1
  end
  # p "period: #{period}"
  res += 1 if period.odd?
}
p res
