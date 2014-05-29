# Format words into a sentence

def format_words(words)
  (words || []).delete_if(&:empty?).join(', ').gsub(/(\w+), (\w+)$/, '\\1 and \\2')
end

p format_words(['ninja', 'samurai', 'ronin'])
