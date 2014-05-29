def fizz_buzz_custom(fizz = 'Fizz', buzz = 'Buzz', x = 3, y = 5)
  arr = []
  (1..100).each { |n|
    elem = ''
    elem += fizz if n % x == 0
    elem += buzz if n % y == 0
    elem = n if elem.empty?
    arr << elem
  }
  arr
end

p fizz_buzz_custom("What's ", "up?", 3, 7)[80]
