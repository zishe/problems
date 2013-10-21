R = STDIN.gets.strip
L = STDIN.gets.strip.to_i - 1

line = R
L.times do
  numbers = line.split
  prev = numbers.shift
  n = 1
  result = []
  numbers.each do |num|
    if num == prev
      n+=1
    else
      result << "#{n} #{prev}"
      n = 1
    end
    prev = num
  end
  result << "#{n} #{prev}"
  line = result.join(' ')
end
puts line
