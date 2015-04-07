require 'test_helper'
require 'queue'

describe Queue do
  before do
    @queue = Queue.new
  end

  it 'reports size correctly' do
    @queue.size.must_equal 0

    @queue.enqueue 2
    @queue.size.must_equal 1

    @queue.dequeue
    @queue.size.must_equal 0
  end
end
