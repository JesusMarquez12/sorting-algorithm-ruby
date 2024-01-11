#!/usr/bin/env ruby

my_array = Array.new(7) {rand(1..9)}
puts "Unsorted array: \t#{my_array}"

array_length = my_array.length

for i in 1...array_length
  key = my_array[i]
  j = i - 1
  while(j >= 0 && my_array[j] > key)
    my_array[j + 1] = my_array[j]
    j -= 1
  end
  my_array[j + 1] = key
end

puts "Sorted array: \t\t#{my_array}"