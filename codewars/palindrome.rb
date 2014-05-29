def palindrome(string)
  s = string.gsub(/[^\w]/,'').downcase
  res = true
  s.chars.to_a.take_while.with_index { |x, y| res = false if x != s[-y-1] }
  res
end
