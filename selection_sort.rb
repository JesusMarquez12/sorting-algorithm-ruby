#!/usr/bin/env ruby

my_array = Array.new(7) {rand(1..9)}
puts "Unsorted array: \t#{my_array}"

array_length = my_array.length

for i in 0...array_length
  index_min = i
  for j in (i + 1)...array_length
    index_min = j if my_array[index_min] > my_array[j]
  end
  my_array[i], my_array[index_min] = my_array[index_min], my_array[i]
end

puts "Sorted array: \t\t#{my_array}"