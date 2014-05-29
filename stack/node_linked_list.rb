class Node
  attr_accessor :value, :next_node

  def initialize(val, next_in_line)
    @value = val
    @next_node = next_in_line
    puts "Initialized a Node with value: #{value}"
  end
end

class LinkedList

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value, nil)
    self
  end

  def delete(val)
    current = @head
    if current.value == val
      @head = @head.next_node
    else
      current = @head
      while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
        current = current.next_node
      end

      if (current != nil) && (current.next_node != nil)
        current.next_node = (current.next_node).next_node
      end
    end
  end

  def full_list
    current = @head
    full_list = []
    while current.next_node != nil
      full_list << current.value
      current = current.next_node
    end
    full_list << current.value
    full_list
  end

  def display
    puts full_list.join(' ')
  end

  def sum
    full_list.keep_if { |x| x > 0 }.reduce(:+)
  end
end


puts "\n"
list = [*-99..99].shuffle
ll = LinkedList.new(list[0])

(1..9).each do |i|
  ll.add(list[i])
end

puts "\nDo you want item to add? '1' - yes '0' - no"
adding = gets.to_i
puts "\n"
if adding == 1
  ll.add(list[10])
end


puts "\nDisplaying Linked List:"
ll.display

puts "\nDo you want to delete item? '1' - yes '0' - no"
deleting = gets.to_i

if deleting == 1
  puts "Type in and delete item and then display the linked list:"
  delete_int = gets.to_i
  ll.delete(delete_int)
end
ll.display

puts "\nThe sum of all positive elements"
puts ll.sum
