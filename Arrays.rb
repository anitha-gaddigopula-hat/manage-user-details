#An Array is an ordered collection of elements (values) — numbers, strings, objects, or even other arrays.
#creting an array
arr1 = [10, 20, 30]
arr2 = Array.new           # => []
arr3 = Array.new(3)        # => [nil, nil, nil]
arr4 = Array.new(3, "hi")  # => ["hi", "hi", "hi"]
arr5 = %w[red green blue]  # => ["red", "green", "blue"]

#Accessing Elements
puts "---- Accessing Elements ----"
puts arr1[1]    #second element
puts arr1[-1]    #last element
puts arr1[0..3]  #Elements from 1 to 3
puts arr1.first  #First element
puts arr1.last   #Last element

# Modifying Arrays
puts "---- Modifying Arrays ----"
puts "---- Array elements before modification ----"
arr = [1, 2, 3]
puts arr.inspect
arr << 4         # Add at end → [1, 2, 3, 4]
arr.push(5)      # Add at end → [1, 2, 3, 4, 5]
arr.unshift(0)   # Add at start → [0, 1, 2, 3, 4, 5]
arr.pop          # Remove last → [0, 1, 2, 3, 4]
arr.shift        # Remove first → [1, 2, 3, 4]
arr[1] = 9       # Replace second element → [1, 9, 3, 4]
puts "---- Array elements after modification ----"
puts arr.inspect

#Iterating an array
puts "---- Iterate through array----"
arr.each{|row| puts row}
puts "\n"

arr.each_with_index do |value, index|
  puts "Index #{index}: #{value}"
end
puts "\n"

arr.each_with_index  {|value, index| puts "Index #{index}: #{value}" }
puts "\n"

arr.each do |row|
  puts row
end

