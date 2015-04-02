require 'minitest/spec'
require 'minitest/autorun'

def array_of_random_numbers
  # prep an array of numbers
  nums = []
  30.times { nums << rand(100) }
  nums
end
