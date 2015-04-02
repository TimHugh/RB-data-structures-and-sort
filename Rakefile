require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

namespace :benchmark do
  task :mergesort do
    require 'benchmark'
    require './lib/mergesort'

    reverse_array = (1..1_000_000).to_a.reverse
    random_array = (1..1_000_000).map { rand(100) }
    sorted_array = (1..1_000_000).to_a

    Benchmark.bmbm do |x|
      x.report("Sorted array") { MergeSort.sort(sorted_array) }
      x.report("Random array") { MergeSort.sort(random_array) }
      x.report("Reverse array") { MergeSort.sort(random_array) }
    end
  end
end
