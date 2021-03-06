require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new("plop")

    assert_instance_of Node, node
  end

  def test_it_has_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_it_has_no_next_node_by_default
    node = Node.new("plop")

    assert_nil node.next_node
  end
end
