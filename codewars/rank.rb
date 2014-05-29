class User
  attr_accessor :rank, :progress

  def initialize()
    @rank = -8
    @progress = 0
    @max_progress = 100
    @max_rank = 8
  end

  def inc_progress(act_rank)
    raise 'Rank is out of range' if act_rank.abs > 8 or act_rank == 0
    return if @rank == 8

    d = act_rank - @rank
    if act_rank * @rank < 0
      d -= 1 if @rank < 0
      d += 1 if @rank > 0
    end

    return if d <= -2

    @progress += case d
      when -1 then 1
      when 0 then 3
      else 10*d*d
    end

    while @progress >= @max_progress
      next_lvl
    end
  end

  private

  def next_lvl
    @progress -= @max_progress
    @rank += (@rank != -1 ? 1 : 2)

    if @rank >= @max_rank
      @progress = 0
      @rank = @max_rank
    end
  end
end





user = User.new
p user.rank # => -8
p user.progress # => 0
user.inc_progress(4)
p user.progress # => 10
p user.rank # => -8
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
user.inc_progress(8) # will add 90 progress
p user.progress # => 0 # progress is now zero
p user.rank # => -7 # rank was upgraded to -7
