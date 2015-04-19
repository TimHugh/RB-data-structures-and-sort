class BinaryTree
  attr_accessor :root

  class Node
    attr_accessor :value, :left, :right

    def initialize(value)
      @value = value
    end
  end

  def find(value, cur_node = @root)
    return nil if cur_node.nil?
    return cur_node if cur_node.value == value
    return find(value, cur_node.left) || find(value, cur_node.right)
  end
end
