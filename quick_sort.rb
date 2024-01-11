#!/usr/bin/env ruby

my_array = Array.new(5) {rand(1..9)}
puts "Unsorted array: \t#{my_array}"

sorted_array = quick_sort(my_array, 0, my_array.length - 1)

puts "Sorted array: \t\t#{sorted_array}"

BEGIN {
  def partition(my_array, left_index, right_index)
    # In this first iteration, we gonna use the right index as guide for the pivot selection
    pivot = my_array[right_index]
    min = left_index - 1

    for j in left_index...(right_index)
      next if my_array[j] > pivot

      min += 1
      my_array[min], my_array[j] = my_array[j], my_array[min]
    end

    my_array[min + 1], my_array[right_index] = my_array[right_index], my_array[min + 1]

    return min + 1
  end

  def quick_sort(my_array, left_index, right_index)
    return if left_index >= right_index

    pivot_index = partition(my_array, left_index, right_index)
    quick_sort(my_array, left_index, pivot_index - 1)
    quick_sort(my_array, pivot_index + 1, right_index)
  ensure
    return my_array
  end
}