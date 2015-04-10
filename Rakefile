require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

task :benchmark do
  require 'benchmark'
  Dir.glob('./lib/**/*').each { |file| require file }

  def sorted_array(length)
    (1..length).to_a
  end

  def reverse_array(length)
    (1..length).to_a.reverse
  end

  def random_array(length)
    (1..length).map { rand(100) }
  end

  Benchmark.bmbm do |x|
    x.report('InsertionSort - Sorted array') do
      InsertionSort.sort(sorted_array 10_000)
    end
    x.report('InsertionSort - Reverse array') do
      InsertionSort.sort(reverse_array 10_000)
    end
    x.report('InsertionSort - Random array') do
      InsertionSort.sort(random_array 10_000)
    end

    x.report('MergeSort - Sorted array') do
      MergeSort.sort(sorted_array 1_000_000)
    end
    x.report('MergeSort - Reverse array') do
      MergeSort.sort(reverse_array 1_000_000)
    end
    x.report('MergeSort - Random array') do
      MergeSort.sort(random_array 1_000_000)
    end
  end
end
