require 'test_helper'
require 'stack'

describe Stack do
  before do
    @stack = Stack.new
  end

  it 'reports size correctly' do
    @stack.size.must_equal 0

    @stack.push 2
    @stack.size.must_equal 1

    @stack.pop
    @stack.size.must_equal 0
  end

  it 'retrieves objects FIFO' do
    @stack.push 1
    @stack.push 2
    @stack.push 3
    @stack.pop.must_equal 3
    @stack.pop.must_equal 2
    @stack.pop.must_equal 1
  end
end
