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

  def to_string(node = head)
    return "" if node.nil?
    return node.data + to_string(node.next_node) if node == head
    " " + node.data + to_string(node.next_node)
  end

  def prepend(data)
    @head = Node.new(data, @head)
  end
end
