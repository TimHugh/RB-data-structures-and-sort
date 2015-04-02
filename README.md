# Sort Algorithms

## Intro

Examples of classic sort algorithms written in Ruby.

Check out the `/test/sort/` directory for examples of usage.

You can also run `rake benchmark:<ALGORITHM>` to see relative performance on different array states (i.e. adatability).

## Algorithms

### [Insertion Sort](http://en.wikipedia.org/wiki/Insertion_sort) : `lib/insertionsort.rb`

Insertion sort has a best case run time of `O(n)` and a worst-case runtime of `O(n^2)`. Specifically, the worst case is when the given set is in descending order. Memory efficiency is `O(1)`--the array is altered in place, and no extra variables are assigned (except for loop counters).

### [Merge Sort]() : `lib/mergesort.rb`

Merge sort has a constant run time of `O(n log n)`--sort of. For the most part, it is not adaptive, but it will merge in a set without checking it if the other set being merged runs out of values. Memory efficiency is `O(n)`, or more specifically `O(2n)`. Initially, it creates `n` additional arrays, then an additional `n/2` + `n/4` + ... `n/n`.
