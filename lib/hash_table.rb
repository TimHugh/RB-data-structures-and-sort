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
  end

  def keyToHash(key)
    hashValue(key) % @maxSize
  end

  def hashValue(key)
    key.inspect.split('').inject(0) { |memo, char| memo += char.ord }
  end
end
