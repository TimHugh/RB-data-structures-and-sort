class MergeSort
  def self.sort(numbers_array)
    # start with an array of arrays
    array = numbers_array.map{ |n| [n] }
    # loop through and merge pairs until there is only one array left
    while array.size > 1
      new_array = []
      array.each_slice(2) do |set1, set2|
        new_array << merge(*[set1, set2].compact)
      end
      # the next loop should iterate over the result of this loop
      array = new_array
    end
    # return the resulting array
    array.first
  end

  private

  def self.merge(set1, set2 = [])
    result = []
    # until one of the sets runs out, add the lower of the two first elements from each set to the return array
    unless set1.empty? || set2.empty?
      result << (set1.first <= set2.first ? set1.shift : set2.shift)
    end
    # dump the remaining elements into the return array
    result += set1 + set2
  end
end
