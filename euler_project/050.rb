require 'mathn'

a = {}
i = 0

Prime.each(1_000_000) do |x|
  a[i] = 0 if i < 100
  a.each { |k, v| a[k] += x if (a[k] + x) < 1_000_000 }
  break if a[0] > 1_000_000
  i += 1
end

p a.select { |_, v| Prime.prime? v }.first.last
