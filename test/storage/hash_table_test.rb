require 'test_helper'
require 'hash_table'

describe HashTable do
  before do
    @hashtable = HashTable.new
  end

  it 'is created empty' do
    @hashtable.size.must_equal 0
  end
end
