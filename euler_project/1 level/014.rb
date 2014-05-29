max_n = 1
max_l = 0
(2..999999).each do |n|
  steps = 1
  x = n
  while x > 1
    if x % 2 == 0
      x = x / 2
    else
      x = 3 * x + 1
    end
    steps += 1
  end
  # p "num: #{n}  ; length: #{steps}"
  if steps > max_l
    max_n = n
    max_l = steps
  end
end

p "max num: #{max_n}  ; length: #{max_l}"
