require 'test_helper'
require 'merge_sort'

describe MergeSort do
  it 'sorts numbers correctly' do
    start_nums = array_of_random_numbers
    expected_nums = start_nums.sort

    assert_equal expected_nums, MergeSort.sort(start_nums)
  end
end
