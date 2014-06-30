def solution a
  t = 0
  while t < 10
    a.sort_by! { |x| -x }
    p a
    a[0] - a[1] > 0 ? a[0] = a[0] - a[1] : t += 1
  end
  a
end

p solution([6, 9, 21])
