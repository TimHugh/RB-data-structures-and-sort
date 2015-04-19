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

  it 'returns a node when searching for a value' do
    @tree.find('Root').must_be_nil
    @tree.root = BinaryTree::Node.new('Root')
    @tree.find('Root').value.must_equal 'Root'
  end
end
