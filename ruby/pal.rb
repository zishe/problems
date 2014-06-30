$is_pal = lambda { |s| s == s.reverse }

def make_palindrome string
  (1..string.size).select { |c| $is_pal.(string[0..c]) || $is_pal.(string.reverse[0..c]) }.sort.last
end


p make_palindrome('leveleded') #-> 'deleveled'
