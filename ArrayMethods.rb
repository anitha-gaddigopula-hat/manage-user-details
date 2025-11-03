#Built in Methods in An Array
puts "---- Array Built in methods----"

arr = [3, 1, 2, 4, 2, nil, 5, 3]

puts "Original Array: #{arr.inspect}"
puts "----------------------------------"

#1. INFORMATION METHODS
puts "\n INFORMATION METHODS"
puts "Length: #{arr.length}"
puts "Size: #{arr.size}"
puts "Is Empty?: #{arr.empty?}"
puts "Include 2?: #{arr.include?(2)}"

#2. ACCESS METHODS
puts "\n ACCESS METHODS"
puts "Element at index 2: #{arr[2]}"
puts "Element at last index: #{arr[-1]}"
puts "Slice (1..3): #{arr[1..3]}"
puts "First 3 elements: #{arr.first(3)}"
puts "Last 2 elements: #{arr.last(2).inspect}"

#3. ADD / REMOVE METHODS
puts "\nADD / REMOVE METHODS"
a = [1, 2, 3] 
a.push(4)      #add at end
a << 5         #add at end
a.unshift(0)   #add at start
puts "After push & unshift: #{a.inspect}"
a.pop          #remove last
a.shift        #remove first
puts "After pop & shift: #{a.inspect}"
a.insert(1, 99)    #insert at index 1
puts "After insert at index 1: #{a.inspect}"

#4. CLEANUP & MODIFY
puts "\n CLEANUP & MODIFY"
arr2 = [1, 2, 2, nil, 3, 4, nil, 4]
puts "Original: #{arr2.inspect}"
puts "Compact (remove nil): #{arr2.compact.inspect}"
puts "Uniq (remove duplicates): #{arr2.uniq.inspect}"
puts "Reverse: #{arr2.reverse.inspect}"
puts "Flatten (nested array): #{[5, [8, [3, 4]]].flatten.inspect}"    #[1, 2, 3, 4]
puts "Clear array: #{arr2.clear.inspect}"       #[]

#5. TRANSFORM & LOOP
puts "\n TRANSFORM & LOOP"
nums = [1, 2, 3, 4, 5]
puts "Each loop:"
nums.each { |n| print "#{n} " }
puts "\nMap (double each): #{nums.map { |n| n * 2 }.inspect}"
puts "Select (even numbers): #{nums.select { |n| n.even? }.inspect}"
puts "Reject (odd numbers): #{nums.reject { |n| n.odd? }.inspect}"
puts "Collect same as map: #{nums.collect { |n| n + 10 }.inspect}"
puts "Each with index:"
nums.each_with_index { |v, i| puts "Index #{i}: #{v}" }

#6. SORTING & COMPARISON
puts "\n SORTING & COMPARISON"
arr3 = [4, 1, 5, 2, 3]
puts "Sorted: #{arr3.sort.inspect}"
puts "Descending: #{arr3.sort.reverse.inspect}"
puts "Sort by (even first): #{arr3.sort_by { |n| n % 2 }.inspect}"
#puts "Sort by (odd first): #{arr3.sort_by { |n| n.odd? }.inspect}"
puts "Shuffle: #{arr3.shuffle.inspect}"
puts "Min: #{arr3.min}, Max: #{arr3.max}"

#7. COMBINE / MATH METHODS
puts "\n COMBINE / MATH METHODS"
a = [1, 2, 3]
b = [3, 4, 5]
puts "Concat: #{a.concat(b).inspect}"   #[1, 2, 3, 3, 4, 5]
puts "Union (|): #{a | b}"        # unique elements from both
puts "Intersection (&): #{a & b}" # common elements     #[3,4,5]
puts "Difference (-): #{a - b}"   # remove b elements from a
puts "Sum: #{a.sum}"

#8. SEARCH & INDEX METHODS
puts "\n SEARCH & INDEX METHODS"
search_arr = [10, 20, 30, 20, 10,20]
puts "Index of 20: #{search_arr.index(20)}"      #1
puts "Rindex of 20: #{search_arr.rindex(20)}"    #5
puts "Count of 10: #{search_arr.count(10)}"      #2
puts "Sample (random element): #{search_arr.sample}"

#9. STRING CONVERSION
puts "\n STRING CONVERSION"
words = ["Ruby", "is", "fun"]
puts "Join with space: #{words.join(' ')}"
puts "Join with comma: #{words.join(',')}"

#10. RANGE, TAKE & DROP
puts "\n RANGE / TAKE / DROP"
nums = [1, 2, 3, 4, 5, 6]
puts "Take first 3: #{nums.take(3).inspect}"
puts "Drop first 2: #{nums.drop(2).inspect}"
puts "Slice (2, 3): #{nums.slice(2, 3).inspect}"

#11. REDUCE / INJECT
puts "\n REDUCE / INJECT"
values = [2, 4, 6]
puts "Sum using reduce: #{values.reduce(:+)}"
puts "Product using inject: #{values.inject(2) { |prod, n| prod * n }}"

#12. NESTED ARRAY & FLATTEN / ZIP
puts "\n FLATTEN / ZIP"
nested = [[1, 2], [3, 4], [5, 6]]
puts "Flattened: #{nested.flatten.inspect}"
a = [1, 2, 3,5,6]
b = ['a', 'b', 'c', 'd']
puts "Zipped: #{a.zip(b).inspect}"    #[[1, "a"], [2, "b"], [3, "c"], [5, "d"], [6, nil]]

#13. CONVERSION
puts "\n CONVERSIONS"
puts "To string: #{a.to_s}"
puts "To hash (from array of pairs): #{[[:x, 10], [:y, 20]].to_h.inspect}"
