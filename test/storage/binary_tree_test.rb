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

  it 'can be traversed in-order' do
    @tree.root = BinaryTree::Node.new('Tim')
    @tree.root.add('Jony', 'Phil')
    @tree.find('Jony').add('Dan', 'Katie')
    @tree.find('Phil').add('Craig', 'Eddie')
    @tree.find('Katie').add('Peter', 'Andrea')
    @tree.to_s.must_equal "Dan, Jony, Peter, Katie, Andrea, Tim, Craig, Phil, Eddie"
  end
end
