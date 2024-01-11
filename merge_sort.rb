#!/usr/bin/env ruby

my_array_1 = Array.new(3) {rand(1..9)}
puts "Unsorted array 1: \t#{my_array_1}"

my_array_2 = Array.new(6) {rand(1..9)}
puts "Unsorted array 2: \t#{my_array_2}"

merged_array = merge(my_array_1, my_array_2)
puts "Merge array: \t\t#{merged_array}"

BEGIN {
  def merge(left_array, right_array)
    result_array = []

    while left_array.length > 0 && right_array.length > 0
      min_value = left_array.first > right_array.first ? right_array.shift : left_array.shift
      result_array.append(min_value)
    end

    result_array.append(left_array.shift) while left_array.length > 0
    result_array.append(right_array.shift) while right_array.length > 0

    return result_array
  end

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