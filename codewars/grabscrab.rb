def grabscrab word, other
  p word.split('').sort
  other.select { |x| p x.split('').sort ; word.split('').sort == x.split('').sort }
end


p grabscrab "ortsp", ["sport", "parrot", "ports", "matey"]
