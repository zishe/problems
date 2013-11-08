n = [0]*201
p n
n[0] = 1
[1, 2, 5, 10, 20, 50, 100, 200].each do |coin|
  (coin..200).each do |c|
    n[c] += n[c-coin]
  end
  p n
end
p n.last
