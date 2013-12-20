def top_3_words(text)
  text.scan(/[A-z\']+/).map(&:downcase).each_with_object({}) { |x, o|
    o.key?(x) ? o[x] += 1 : o[x] = 1
  }.sort_by { |k, v| -1 * v }.take(3).map { |k, v| k }
end
