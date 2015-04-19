require 'test_helper'
require 'binary_tree'

describe BinaryTree do
  before do
    @tree = BinaryTree.new
  end

  it 'starts empty' do
    @tree.size.must_equal 0
  end
end
