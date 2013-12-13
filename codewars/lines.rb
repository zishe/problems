def line_types lines
  lines.map {|i| i.nil? ? '' : i.downcase  }.map {|i|
    i.include?('alpha') ?
      (i.include?('beta') ? :unknown : :alpha) :
      (i.include?('beta') ? :beta : :unknown)
    }
end

input = ["This is an alpha line", "Beta line next!", "Another AlphA", "I have no idea", "Beta line nextother AlphA", nil]

p line_types input
