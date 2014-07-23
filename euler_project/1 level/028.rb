p (2..1000).step(2).with_object([1]) { |s, r| 4.times { r << r.last + s } }.reduce :+
# => 669171001
