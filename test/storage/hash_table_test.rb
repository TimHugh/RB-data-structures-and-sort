require 'test_helper'
require 'hash_table'

describe HashTable do
  before do
    @hashtable = HashTable.new
  end

  it 'is created empty' do
    @hashtable.size.must_equal 0
  end

  it 'converts objects to an expected hash value' do
    value = @hashtable.send(:hash_value, :one)
    value.must_equal ':'.ord + 'o'.ord + 'n'.ord + 'e'.ord
  end

  it 'correctly reports size' do
    @hashtable[:one] = 'test value'
    @hashtable.size.must_equal 1
    @hashtable[:two] = 'another test value'
    @hashtable.size.must_equal 2
    @hashtable[:two] = nil
    @hashtable.size.must_equal 1
  end

  it 'can store and recall values' do
    @hashtable[:one] = 'test value'
    @hashtable[:one].must_equal 'test value'
  end
end
