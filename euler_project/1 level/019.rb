require 'date'

p (Date.new(1901,1,1)..Date.new(2000,12,31)).to_a.select {|d| d.sunday? and d.day == 1 }.size
