r = [1]
(2..1000).step(2) { |s| 4.times { r << r.last + s } }
p r.inject(&:+)
