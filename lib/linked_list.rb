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

  def search(value)
    return self if @value == value
    return nil unless @next

    @next.search(value)
  end

  def remove(value)
    return nil unless @next
    if @next.value == value
      node = @next
      @next = @next.next
      return node.value
    end

    @next.remove(value)
  end

  def to_s
    string = ""
    string += @value.to_s if @value
    string += ", " if @value && @next
    string += @next.to_s if @next
    string
  end
end
