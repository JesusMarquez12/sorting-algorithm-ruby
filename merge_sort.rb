#!/usr/bin/env ruby

array_1 = Array.new(5) {rand(1..9)}
puts "Unsorted array 1: \t#{array_1}"

sorted_array_1 = merge_sort(array_1)

puts "Sorted array 1: \t#{sorted_array_1}", ""

array_2 = Array.new(6) {rand(1..9)}
puts "Unsorted array 2: \t#{array_2}"

sorted_array_2 = merge_sort(array_2)

puts "Sorted array 2: \t#{sorted_array_2}"

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
    right_array = my_array[index_mid...]

    sorted_left_array = merge_sort(left_array)
    sorted_right_array = merge_sort(right_array)

    return merge(sorted_left_array, sorted_right_array)
  end
}