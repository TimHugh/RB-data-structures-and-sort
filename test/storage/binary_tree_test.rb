require 'test_helper'
require 'binary_tree'

describe BinaryTree do
  before do
    @tree = BinaryTree.new
  end

  it 'holds a root node' do
    @tree.root = BinaryTree::Node.new('Root')
    @tree.root.value.must_equal 'Root'
  end
end
