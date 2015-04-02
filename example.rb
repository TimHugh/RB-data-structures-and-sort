Dir["./lib/*"].each { |file| require file }

def array_of_random_numbers
  # prep an array of numbers
  nums = []
  30.times { nums << rand(100) }
  nums
end

# test InsertionSort
puts "#### INSERTION SORT ####"
nums = array_of_random_numbers
puts "before:\n" + nums.inspect
InsertionSort.sort! nums
puts "after:\n" + nums.inspect
