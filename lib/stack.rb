class Stack
  attr_accessor :head, :size

  Node = Struct.new(:value, :next)

  def initialize
    @size = 0
  end

  def push(value)
    node = Node.new(value, @head)
    @head = node
    @size += 1
  end

  def pop
    node = @head
    @head = @head.next
    @size -= 1
    node.value
  end
end
