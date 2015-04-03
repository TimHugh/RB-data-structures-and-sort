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
    x.report("InsertionSort - Sorted array") { InsertionSort.sort(sorted_array 10_000) }
    x.report("InsertionSort - Reverse array") { InsertionSort.sort(reverse_array 10_000) }
    x.report("InsertionSort - Random array") { InsertionSort.sort(random_array 10_000) }

    x.report("MergeSort - Sorted array") { MergeSort.sort(sorted_array 1_000_000) }
    x.report("MergeSort - Reverse array") { MergeSort.sort(reverse_array 1_000_000) }
    x.report("MergeSort - Random array") { MergeSort.sort(random_array 1_000_000) }
  end
end
