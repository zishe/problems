# def get_hashtags(post)
#   post.split(' ').select { |x| x =~ /^#+\w+$/ }.map { |x| x.gsub('#', '') }
# end

# p get_hashtags("#blue#red#yellow#green")

class Primes
  def self.first n
    ([2] + (3..n*(Math.log(n).ceil+1)).select { |x| (2..Math.sqrt(x)).all? { |y| x % y != 0 } }).first n
  end
end

p Primes.first(61).size
