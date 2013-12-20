def get_hashtags(post)
  post.split(' ').select { |x| x =~ /^#+\w+$/ }.map { |x| x.gsub('#', '') }
end

p get_hashtags("#blue#red#yellow#green")
