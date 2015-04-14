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

  it 'returns elements in the same order they are stored' do
    @queue.enqueue 1
    @queue.enqueue 2
    @queue.enqueue 3
    @queue.dequeue.must_equal 1
    @queue.dequeue.must_equal 2
    @queue.dequeue.must_equal 3
  end

  it 'returns nil when dequeueing an empty queue' do
    @queue.dequeue.must_equal nil
  end
end
