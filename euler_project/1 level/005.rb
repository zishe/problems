p (1..20).inject(1) { |result, n| result.lcm n }

i = 1
(1..21).each do |k|
  if i % k > 0
    (1..21).each do |j|
      if (i*j) % k == 0
        i *= j
        break
      end
    end
  end
end
p i
