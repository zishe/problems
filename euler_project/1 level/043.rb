primes = [2,3,5,7,11,13,17]
all_pans = (0..9).to_a.permutation.to_a.map { |x| x.join }.select { |x| x.size == 10 }.uniq
p all_pans.select { |x| primes.map.with_index { |y, i| x[i+1..i+3].to_i % y == 0 }.all? }.map(&:to_i).reduce(:+)

# => 16695334890
