p File.read('../data/number.txt').split("\n").map(&:to_i).inject(:+).to_s[0..9].to_i
