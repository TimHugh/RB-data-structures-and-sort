class HashTable
  attr_reader :size

  Node = Struct.new(:key, :value, :next, :length)

  def initialize
    @size = 0
    @max_size = 10
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
    hash = key_to_hash(key)

    node.next = @table[hash]
    node.length = @table[hash].nil? ? 1 : @table[hash].length + 1

    @table[hash] = node
    @size += 1
  end

  def remove(key)
    hash = key_to_hash key

    node = @table[hash]
    return if node.nil?
    if node.key == key
      @table[hash] = node.next
      @size -= 1
      return node.value
    end

    node = node.next while node.next && node.next.key != key
    return if node.nil?

    out = node.next.value
    node.next = node.next.next
    @size -= 1
    out
  end

  def find(key)
    node = @table[key_to_hash key]

    node = node.next while !node.nil? && node.key != key

    node.nil? ? nil : node.value
  end

  def key_to_hash(key)
    hash_value(key) % @max_size
  end

  def hash_value(key)
    key.inspect.split('').inject(0) { |a, e| a + e.ord }
  end
end
