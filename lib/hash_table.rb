class HashTable
  attr_reader :size

  Node = Struct.new(:key, :value, :next, :length)

  def initialize
    @size = 0
    @maxSize = 10
    @table = []
  end

  def []=(key, value)
    if value.nil?
      remove(key)
    else
      add(key, value)
    end
  end

  def [](key)
    find(key)
  end

  protected

  def add(key, value)
    node = Node.new(key, value)
    hash = keyToHash(key)

    node.next = @table[hash]
    node.length = @table[hash].nil? ? 1 : @table[hash].length + 1

    @table[hash] = node
    @size += 1
  end

  def remove(key)
    hash = keyToHash key

    node = @table[hash]
    return if node.nil?
    if node.key == key
      @table[hash] = node.next
      @size -= 1
      return node.value
    end

    while node.next && node.next.key != key
      node = node.next
    end
    return if node.nil?

    out = node.next.value
    node.next = node.next.next
    @size -= 1
    out
  end

  def find(key)
    node = @table[keyToHash key]

    node = node.next while !node.nil? && node.key != key

    node.nil? ? nil : node.value
  end

  def keyToHash(key)
    hashValue(key) % @maxSize
  end

  def hashValue(key)
    key.inspect.split('').inject(0) { |memo, char| memo += char.ord }
  end
end
