p (1..100).reduce(:*).to_s.split(//).map { |n| n.to_i }.inject(:+)
