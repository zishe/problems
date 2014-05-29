def to_word num
  a = ', one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen'.split(', ')
  b = ', , twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety'.split(', ')
  c = 'hundred'
  d = 'thousand'

  all = ''

  rest = (num - num % 100) / 100
  if rest > 0 and rest < 10
    all += a[rest%10]
    all += c
    all += 'and' if num % 100 != 0
  end
  all += a[1]+d if num == 1000

  rest = num % 100
  if rest < 20
    all += a[rest]
  else
    all += b[rest/10]
    all += a[rest%10]
  end
  all
end

# (1..1000).map { |n| p to_word(n)}
p (1..1000).map { |n| to_word(n).size }.inject(:+)

def another
  a = 'one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen'.split(', ')
  b = 'twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety'.split(', ')
  c = 'hundred'
  d = 'thousand'
  e = 'and'
  a.map { |n| n.size*10 }.inject(:+) +
      a[0..8].map { |n| n.size*180 }.inject(:+) +
      b.map { |n| n.size*100 }.inject(:+) +
      c.size*900 +
      d.size + 3 +
      e.size*(900-9)
end
p another




def another_one
  a = 'one, two, three, four, five, six, seven, eight, nine'.split(', ').map { |n| n.size }.inject(:+)
  a1 = 'ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen'.split(', ').map { |n| n.size }.inject(:+)
  b = 'twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety'.split(', ').map { |n| n.size }.inject(:+)
  c = 'hundred'.size
  d = 'onethousand'.size
  e = 'and'.size
  a*190 + a1*10 + b*100 + c*900 + d + e*(900-9)
end
p another_one

