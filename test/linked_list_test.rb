require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class NodeTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end
end
