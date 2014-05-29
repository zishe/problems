require 'securerandom'
def get_next a, b, i, m
  # p i, a.size
  if i < a.size
    if m
      a[i] = a[i].ceil
      p a
      c = get_next(a, b, i, !m)
      if c.all? { |x| x.is_a? Integer }
        # return c
        b << c
      end
      # c
      b
    else
      a[i] = a[i] - 1
      p a
      c = get_next(a, b, i + 1, !m)
      if c.all? { |x| x.is_a? Integer }
        # return c
        b << c
      end
      # c
      # nil
      b
    end
  else
    b.flatten
  end
end
[35.4, 95.3, 71.2]
[[35, 94, 68], [35, 94, 68], [35, 94, 68], [35, 94, 68], [35, 94, 68], [35, 94, 68], [35, 94, 68], [35, 94, 68]]

arr = []
2.times { arr << SecureRandom.random_number(1000).to_f/10 }
p arr
p get_next(arr, [], 0, true)
p arr
