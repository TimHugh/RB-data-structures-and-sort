require 'test_helper'
require 'insertionsort'

describe InsertionSort do
  it 'sorts numbers correctly' do
    start_nums = array_of_random_numbers
    expected_nums = start_nums.sort

    InsertionSort.sort!(start_nums)

    assert_equal start_nums, expected_nums
  end
end
