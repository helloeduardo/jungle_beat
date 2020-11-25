class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    return 0 if head.nil?
    counter = 1
    while head.next_node
      counter += 1
    end
    counter
  end
end
