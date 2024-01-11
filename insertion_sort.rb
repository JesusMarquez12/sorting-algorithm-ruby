#!/usr/bin/env ruby

my_array = Array.new(7) {rand(1..9)}
puts "Unsorted array: \t#{my_array}"

array_length = my_array.length

for j in 1...array_length
  key = my_array[j]
  i = j - 1
  while(i >= 0 && my_array[i] > key)
    my_array[i + 1] = my_array[i]
    i -= 1
  end
  my_array[i + 1] = key
end

puts "Sorted array: \t\t#{my_array}"