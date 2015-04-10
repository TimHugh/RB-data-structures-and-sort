require 'test_helper'
require 'hash_table'

describe HashTable do
  before do
    @hashtable = HashTable.new
  end

  it 'is created empty' do
    @hashtable.size.must_equal 0
  end

  it 'can store and recall values' do
    skip

    @hashtable[:one] = "test value"
    @hashtable[:one].must_equal "test value"
  end
end
