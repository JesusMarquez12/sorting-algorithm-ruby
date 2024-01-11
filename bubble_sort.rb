#!/usr/bin/env ruby

my_array = Array.new(7) {rand(1..9)}
puts "Unsorted array: \t#{my_array}"

array_length = my_array.length

for i in 0...array_length
  for j in 0...(array_length - i - 1)
    if my_array[j] > my_array[j + 1]
      my_array[j], my_array[j + 1] = my_array[j + 1], my_array[j]
    end
  end
end

puts "Sorted array: \t\t#{my_array}"