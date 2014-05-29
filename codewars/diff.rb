class GroupByDifference
  def initialize(numbers)
    @numbers = numbers
  end

  def find(d)
    p "numbers: #{@numbers}"
    p "difference: #{d}"
    @numbers.select { |x| (x-d..x+d).any? { |y| @numbers.include? y }}.sort
  end
end
