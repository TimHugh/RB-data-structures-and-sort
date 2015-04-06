require 'test_helper'
require 'insertion_sort'

describe InsertionSort do
  it 'sorts numbers correctly' do
    start_nums = array_of_random_numbers
    expected_nums = start_nums.sort

    assert_equal expected_nums, InsertionSort.sort(start_nums)
  end
end
