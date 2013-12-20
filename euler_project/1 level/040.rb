fraction = (1..(10**6)).map(&:to_s).join

p (0..6).map { |e, r| fraction[(10**e)-1].to_i }.inject(:*)
