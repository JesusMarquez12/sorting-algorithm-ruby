#!/usr/bin/env ruby

my_array_1 = Array.new(5) {rand(1..9)}
puts "Unsorted array 1: \t#{my_array_1}"

merge_sort(my_array_1)

puts "Sorted array 1: \t#{my_array_1}", ""

my_array_2 = Array.new(6) {rand(1..9)}
puts "Unsorted array 2: \t#{my_array_2}"

merge_sort(my_array_2)

puts "Sorted array 2: \t#{my_array_2}"

BEGIN {
  def merge_sort(my_array)
    return my_array if my_array.length == 1

    index_mid = my_array.length / 2

    left_array = my_array[...index_mid]
    puts "left array: \t\t#{left_array}"

    right_array = my_array[index_mid...]
    puts "right array: \t\t#{right_array}"

    return my_array
  end
}