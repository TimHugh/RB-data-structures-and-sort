require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

namespace :benchmark do
  require 'benchmark'
  Dir.glob('./lib/**/*').each { |file| require file }

  task :sort do
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

  namespace :storage do
    task :hashtable do
      hash100 = HashTable.new(100)
      hash1000 = HashTable.new(1000)

      # prep dictionary words
      words = []
      File.open('/usr/share/dict/words').each_line do |line|
        words << line
      end

      average_word_length = words.inject(0.0) { |a, e| a + e.size } / words.size
      puts "######## DICTIONARY ########"
      puts "Average word length: #{average_word_length}"

      Benchmark.bmbm do |x|
        x.report("Hash Table (100 rows) - fill") do
          words.each { |word| hash100[word] = word.reverse }
        end
        x.report("Hash Table (100 rows) - recall") do
          words.each { |word| hash100[word] }
        end

        x.report("Hash Table (1000 rows) - fill") do
          words.each { |word| hash1000[word] = word.reverse }
        end
        x.report("Hash Table (1000 rows) - recall") do
          words.each { |word| hash1000[word] }
        end
      end

      hash100_average_depth = hash100.table.inject(0.0) { |a, e| a + e.length } / hash100.table.size
      hash1000_average_depth = hash1000.table.inject(0.0) { |a, e| a + e.length } / hash1000.table.size
      puts "Hash Table (100 rows) average depth: #{hash100_average_depth}"
      puts "Hash Table (1000 rows) average depth: #{hash1000_average_depth}"
    end
  end
end
