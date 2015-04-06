require 'test_helper'
require 'linked_list'

describe LinkedList do
  before do
    list = LinkedList.new
    list.add(2)
    list.add(4)
    list.add(7)
  end

  it 'stores new values at the front' do
    list.add(5)
    list.first.must_equal 5
  end

  it 'returns the correct node when a value is searched' do
  end

  it 'returns null when searching for a value that is not present' do
  end

  it 'correctly removes values' do
  end

  it 'returns a value when it removes it from the list' do
  end

  it 'returns null when removing a value that is not present' do
  end

  it 'creates a comma-separated string when the to_s function is called' do
  end
end
