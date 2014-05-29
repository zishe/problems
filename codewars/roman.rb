# subtractive notation:
# - the numeral I can be placed before V and X to make 4 units (IV) and 9 units (IX respectively)
# - X can be placed before L and C to make 40 (XL) and 90 (XC respectively)
# - C can be placed before D and M to make 400 (CD) and 900 (CM) according to the same pattern

def solution(number)
  b = ['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]
  p = 1
  res = []
  while p <= number.to_s.size
    x = (number % 10**p) / 10**(p-1)
    p x
    res << get_nums(b, p, x) if x != 0
    p res
    p+= 1
  end
  res.reverse.join
end

def get_nums b, p, x
  if p == 4
    b.last[0]*x
  else
    if x < 5
      if x == 4
        b[(p - 1)*2][0] + b[p*2 - 1][0]
      else
        b[(p - 1)*2][0]*x
      end
    else
      if x == 9
        b[(p - 1)*2][0] + b[p*2][0]
      else
        b[p*2 - 1][0] + b[(p - 1)*2][0]*(x-5)
      end
    end
  end
end


p solution 54
