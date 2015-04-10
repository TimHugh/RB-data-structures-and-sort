class HashTable
  attr_reader :size

  def initialize
    @size = 0
  end

  protected

  def hashValue(key)
    key.inspect.split('').inject(0) { |memo, char| memo += char.ord }
  end
end
