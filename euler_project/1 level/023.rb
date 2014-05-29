# can be speed up with collecting abundants and repeating
# from maximum abundant number

def divisors(x)
  (2..Math.sqrt(x) + 1).select { |i| x % i == 0 }.map { |n| [n, x/n] }.flatten.uniq.sort
end

def is_sum_of_2_abundant?(all, n)
  (12..(n/2 + 1)).each do |m|
    dm = all[m]
    # puts "#{n}   #{m}   #{dm.inspect}"
    if not dm.empty? and dm.inject(:+) > m
      dnm = all[n - m]
      if not dnm.empty? and dnm.inject(:+) > (n - m)
        return true
        # puts "#{n} :: #{m}, #{n - m}"
        # p divisors(m)
        # p divisors(n - m)
        break
      end
    end
  end
  false
end

max_num = 28123

start_time = Time.now

devs_cache = Hash[(12..max_num).to_a.map { |n| [n, divisors(n)] }]
a = (24..max_num).select { |n| is_sum_of_2_abundant? devs_cache, n }
p (1..max_num).to_a.inject(:+) - a.inject(:+)

p Time.now - start_time
