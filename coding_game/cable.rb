n = STDIN.gets.strip.to_i
pos = (0..n-1).map { STDIN.gets.strip.split().map(&:to_i) }

Xs = pos.map {|n| n[0]}
Ys = pos.map {|n| n[1]}.sort

pivot = Ys[n/2]

puts (Xs.max-Xs.min) + Ys.map{ |y| (pivot-y).abs }.inject(:+)
