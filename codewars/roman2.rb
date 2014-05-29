def solution(roman)
  h = { 1000 => "M",900 => "CM",500 => "D",400 => "CD",100 => "C",90 => "XC",50 => "L",40 => "XL",10 => "X",9 => "IX",5 => "V",4 => "IV",1 => "I" }
  h.each_with_object(0) do |(n,r), s|
    while roman[0...r.length] == r do
      roman = roman[r.length..-1]
      s += n
    end
    p s
  end
end

p solution('MCX')
