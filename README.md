# Sort Algorithms

## Intro

Examples of classic sort algorithms written in Ruby.

Check out the tests for examples of usage.

You can also run `rake benchmark` to see relative performance of algorithms on different data sets (i.e. adaptability).

## Algorithms

### [Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort) : `lib/insertion_sort.rb`

Insertion sort has a best case run time of `O(n)` and a worst-case runtime of `O(n^2)`. Specifically, the best case is when the given set is already in ascending order, and the worst case is when the given set is in descending order. Memory efficiency is `O(1)`--the array is altered in place, and no extra variables are assigned (except for loop counters).

### [Merge Sort](http://en.wikipedia.org/wiki/Merge_sort) : `lib/merge_sort.rb`

Merge sort has a constant run time of `O(n log n)`--sort of. For the most part this implementation is not adaptive, but it will merge in a set without checking it if the other set being merged runs out of values. Memory efficiency is `O(n)`, or more specifically `O(2n)`. Initially, it creates `n` additional arrays, then an additional `n/2` + `n/4` + ... `n/n`.

## Data Structures

### [Linked List](http://en.wikipedia.org/wiki/Linked_list): `lib/linked_list.rb'

The linked list is a lightweight storage object that stores data linearly in the order it was added. Adding is a `O( 1 )` time operation, but searching and removal are both `O( n )` (or some fraction of n).


### [Stack](http://en.wikipedia.org/wiki/Stack_%28abstract_data_type%29): `lib/stack.rb`

The stack is a very lightweight, efficient structure. It stores data using the LIFO method, using `push(value)` and `pop()` functions to add and remove elements. Both operations are done in `O( 1 )` time.

### [Queue](http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29): `lib/queue.rb`

The queue is similar to a stack, but uses the FIFO method with `enqueue(value)` and `dequeue()`. Again, both operations are done in `O( 1 )` time.

### [Hash Table](): `lib/hash_table.rb`

A hash table allows an infinite keyspace, and allows storage in `O (1)` time. Retrieval varies depending on implementation (in this case, it's a table of linked lists) but is `O (1)` at best and `O (n)` at worst.
Infinite keyspace is achieved by generating a "fairly unique" hash from the key and mapping it to a table. The execution time is inversely proportional to the size of the table, and consequently is inversely proportional to memory usage.

### [Binary Tree](): `lib/binary_tree.rb`

A binary tree is a special tree where every node must have between 0 and 2 children. This particular implementation is less traditional, and is based more on a DOM-like structure.
