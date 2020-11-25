class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def tail
    return nil if head.nil?
    pointer = head
    while pointer.next_node
      pointer = pointer.next_node
    end
    pointer
  end

  def append(data)
    return @head = Node.new(data) if head.nil?
    tail.next_node = Node.new(data)
  end

  def count
    return 0 if head.nil?
    counter = 1
    pointer = head
    while pointer.next_node
      counter += 1
      pointer = pointer.next_node
    end
    counter
  end

  def to_string
    head.data
  end
end
