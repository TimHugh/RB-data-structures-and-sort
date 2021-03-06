class BinaryTree
  attr_accessor :root

  class NullNode
    def to_a(_order)
      []
    end

    def nil?
      true
    end
  end

  class Node
    attr_accessor :value, :left, :right

    def initialize(value)
      @value = value
      @left = @right = NullNode.new
    end

    def add(*values)
      values.each do |val|
        if @left.nil?
          @left = Node.new(val)
        elsif @right.nil?
          @right = Node.new(val)
        else
          fail 'Node already has two children'
        end
      end
    end

    def to_a(order)
      case order
      when :postorder
        @left.to_a(order) + @right.to_a(order) + [@value]
      when :preorder
        [@value] + @left.to_a(order) + @right.to_a(order)
      else
        @left.to_a(order) + [@value] + @right.to_a(order)
      end
    end
  end

  def find(value, cur_node = @root)
    return nil if cur_node.nil?
    return cur_node if cur_node.value == value
    find(value, cur_node.left) || find(value, cur_node.right)
  end

  def to_s(order = :inorder)
    to_a(order).join(', ')
  end

  def to_a(order = :inorder)
    @root.to_a(order)
  end
end
