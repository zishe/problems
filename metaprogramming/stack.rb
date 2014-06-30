class Queue
  def initialize(size)
    @size = size
    @store = Array.new
  end

  def dequeue
    empty? ? nil : @store.shift
  end

  def enqueue(element)
    (full? or element.nil?) ? nil : (@store.push(element) ; self)
  end

  def size
    @size
  end

  private

  def full?
    @store.size >= @size
  end

  def empty?
    @store.empty?
  end
end
