class InsertionSort
  def self.sort(numbers_array)
    sort! numbers_array.clone
  end

  def self.sort!(numbers_array)
    (1...numbers_array.length).each do |next_to_sort|
      next_to_sort.downto(1) do |cur|
        swap!(numbers_array, cur - 1, cur) if numbers_array[cur - 1] > numbers_array[cur]
      end
    end
    numbers_array
  end

  private

  def self.swap!(numbers_array, i1, i2)
    numbers_array[i1], numbers_array[i2] = numbers_array[i2], numbers_array[i1]
  end
end
