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

  def test_it_can_return_string
    list = LinkedList.new

    list.append('doop')

    assert_equal 'doop', list.to_string
  end

  def test_it_can_append_multiple
    list = LinkedList.new

    list.append('doop')
    list.append('deep')

    assert_equal 'doop', list.head.data
    assert_equal 'deep', list.head.next_node.data
  end

  def test_it_can_count_multiple
    list = LinkedList.new

    assert_equal 0, list.count

    list.append('doop')

    assert_equal 1, list.count

    list.append('deep')

    assert_equal 2, list.count

    list.append('beep')

    assert_equal 3, list.count
  end

  def test_it_can_return_string_for_multiple
    list = LinkedList.new

    list.append('doop')

    assert_equal 'doop', list.to_string

    list.append('deep')

    assert_equal 'doop deep', list.to_string
  end

  def test_it_can_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end
end
