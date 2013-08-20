m = 1000
1.upto(m/2) do |x|
  (x+1).upto(m/2) do |y|
    z=m-x-y
    if x*x+y*y==z*z
      p "#{x} #{y} #{z}"
      p x*y*z
      break 2
    end
  end
end
