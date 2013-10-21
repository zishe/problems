def get_min(number, all)
  m = 0
  all.each do |n|
    diff = true
    i = 0
    count = 0
    while diff
      if number[i] == n[i]
        count += 1
      else
        diff = false
      end
    end
    m = [m, count].max
  end
  number.size - m
end


n = STDIN.gets.to_i
numbers = []
n.times { numbers << STDIN.gets.strip }

sum = 0
n.times {
    sum += get_min numbers.shift, numbers
}
