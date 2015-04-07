class Queue
  attr_reader :head, :tail, :size
  def initialize
    @size = 0
  end

  Node = Struct.new(:value, :next, :prev)

  def enqueue(value)
    node = Node.new(value)
    @head = node unless @head
    if @tail
      @tail.next = node
      node.prev = @tail
    end
    @tail = node
    @size += 1
  end

  def dequeue
    node = @head
    @head = @head.next
    @head.prev = nil if @head
    @size -= 1
    node.value
  end
end
