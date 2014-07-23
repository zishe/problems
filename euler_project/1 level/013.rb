p File.read('../data/number.txt').split(/\n/).map(&:to_i).reduce(:+).to_s[0..9].to_i
# => 5537376230
