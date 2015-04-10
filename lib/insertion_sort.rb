class InsertionSort
  def self.sort(numbers)
    sort! numbers.clone
  end

  def self.sort!(numbers)
    (1...numbers.length).each do |next_to_sort|
      next_to_sort.downto(1) do |cur|
        swap!(numbers, cur - 1, cur) if numbers[cur - 1] > numbers[cur]
      end
    end
    numbers
  end

  def self.swap!(numbers, i1, i2)
    numbers[i1], numbers[i2] = numbers[i2], numbers[i1]
  end
end
