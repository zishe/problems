a, b, n = 1, 1, 2
digits = 1
while digits < 1000
  s = a+b
  a = b
  b = s
  n += 1
  digits = s.to_s.size
end
p n
