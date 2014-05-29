class Calc
  ENGLISH_TO_OP = {zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, plus: :+, minus: :-, times: :*, divided_by: :/}

  def method_missing(m)
    if s = ENGLISH_TO_OP[m]
      (@cmd ||= []) << s
      return @cmd[0].send(*@cmd[1..2]) if @cmd.size == 3
      self
    else
      super
    end
  end
end

p Calc.new.four.plus.five

  # maths = Hash[{zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, plus: :+, minus: :-, times: :*, divided_by: :/}]
