class LinkedList
  attr_accessor :next
  attr_accessor :value

  def initialize(value = nil)
    @value = value
    @next = nil
  end

  def add(value)
    node = LinkedList.new(value)
    node.next = @next
    @next = node
  end

  def first
    @next.value
  end
end
