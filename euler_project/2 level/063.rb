p (1..100).map { |x| (1..100).select { |y| (y**x).to_s.length == x }.map { |z| z**x } }.flatten.size
