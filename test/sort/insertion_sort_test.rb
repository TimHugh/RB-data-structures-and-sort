require 'test_helper'
require 'insertionsort'

describe InsertionSort do
  it 'sorts numbers correctly' do
    start_nums = array_of_random_numbers
    expected_nums = start_nums.sort

    assert_equal InsertionSort.sort(start_nums), expected_nums
  end
end
