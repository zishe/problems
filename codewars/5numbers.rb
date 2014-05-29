def median a
  med = (a.size/2).floor
  p a
  a.size.odd? ? a[med] : a[med-1..med].reduce(:+).to_f/2
end

def five_num a
  a = a.sort
  med = median a
  mid = (a.size.to_f/2).floor - 1
  p mid
  q1 = median(a.size.even? ? a[0..mid] : a[0..mid] + [med])
  p a.size
  q3 = median(a.size.even? ? a[(mid+1)..-1] : [med] + a[(mid+2)..-1])
  p a.size
  [a.min, q1, med, q3, a.max].map &:to_f
end

p five_num([4, 6, -6, 7, -3])

# Input: [4, 6, -6, 7, -3]
# Expected: [-6, -3, 4, 6, 7]
# Input: [7, 15, 36, 39, 40, 41]
# Test Passed
# Input: [6, 7, 15, 36, 39, 40, 41, 42, 43, 47, 49]
# Test Failed: Output: [6.0, 15.0, 40.0, 41.5, 49.0], Expected: [6.0, 25.5, 40.0, 42.5, 49.0]
