arr = [25, -35, 12, 6, 92, -115, 17, 2, 2, 2, -7, 2, -9, 16, 2, -11]

max = []
(0...arr.size).each { |x|
  (1...(arr.size-1)).each { |y|
    if x+y < arr.size
      max = arr[x..(x+y)] if arr[x..(x+y)].reduce(:+) == 0 and max.size < arr[x..(x+y)].size
    end
  }
}
p max

maxZeroSequence = (arr) ->
  max = []
  for x in [0..(arr.length-1)]
    for y in [0..(arr.length-2)] when x + y < arr.length
      if arr[x..(x+y)].reduce((x,y) -> x + y) == 0 and (max.length < arr[x..(x+y)].length)
        max = arr[x..(x+y)]
  max
