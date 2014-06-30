class I
  def name
    "Alex"
  end
end

class I
  def sname
    "Kireyev"
  end

  protected
  def method_missing method, *args, &block
    if method.to_s.include? "name"
      "Alder"
    else
      super method, *args, &block
    end
  end
end

class Alter < I
  def entity
    :diablo
  end
end


p I.new.name
p I.ancestors
p Alter.ancestors
p Alter.new.fname


def solution(keys, default_value)
  Hash[keys.zip([default_value]*keys.size)]
end
p solution([:draft, :completed], 0)



a = [ [ 1, "one"], [2, "two"], [3, "three", "Fds"], ["ii", "two"] ]
p a.rassoc("two")    #=> [2, "two"]
p a.rassoc("three")   #=> nil
