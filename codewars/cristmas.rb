require 'date.rb'

def find_out_christmas_weekday date
  Date.parse(date.split(' ').reverse.join('-')).strftime('%A')
end

p find_out_christmas_weekday('2013 12 25')
