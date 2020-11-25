require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class NodeTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_has_a_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append
    list = LinkedList.new

    list.append('doop')

    assert_instance_of Node, list.head
    assert_equal 'doop', list.head.data
    assert_nil list.head.next_node
  end

  def test_it_can_count
    list = LinkedList.new

    assert_equal 0, list.count

    list.append('doop')

    assert_equal 1, list.count
  end
end
