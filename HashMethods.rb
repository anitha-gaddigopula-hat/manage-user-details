# Built-in Methods in Hashes

person = { name: "Anu", age: 22, city: "Hyderabad" }

puts "Original Hash: #{person.inspect}"
puts "--------------------------------"

#1. INFORMATION METHODS
puts "\n INFORMATION METHODS"
puts "Keys: #{person.keys.inspect}"
puts "Values: #{person.values.inspect}"
puts "Length: #{person.length}"
puts "Empty?: #{person.empty?}"
puts "Has key :age? #{person.has_key?(:age)}"
puts "Has value 'Hyderabad'? #{person.has_value?('Hyderabad')}"

#2. ACCESS METHODS
puts "\n ACCESS METHODS"
puts "Access name: #{person[:name]}"
puts "Access city using fetch: #{person.fetch(:city)}"
puts "Fetch with default: #{person.fetch(:country, 'India')}"

#3. ADD / UPDATE / DELETE
puts "\n ADD / UPDATE / DELETE"
person[:course] = "Ruby"
puts "After adding course: #{person.inspect}"
person[:age] = 23
puts "After updating age: #{person.inspect}"
person.delete(:city)
puts "After deleting city: #{person.inspect}"

#4. ITERATION METHODS
puts "\n ITERATION METHODS"
person.each { |key, value| puts "#{key} => #{value}" }
puts "Each key:"
person.each_key { |k| puts k }
puts "Each value:"
person.each_value { |v| puts v }

#5. SELECT / REJECT / FILTER
puts "\n SELECT / REJECT / FILTER"
marks = { anu: 90, sai: 75, teja: 85 }
puts "Select above 80: #{marks.select { |_, v| v > 80 }.inspect}"
puts "Reject below 80: #{marks.reject { |_, v| v < 80 }.inspect}"
puts "Keep if score == 75: #{marks.keep_if { |_, v| v == 75 }.inspect}"

#6. MERGE & UPDATE
puts "\n MERGE & UPDATE"
h1 = { a: 10, b: 20 }
h2 = { b: 99, c: 30 }
puts "Merge: #{h1.merge(h2).inspect}"      # h1 unchanged
puts "Merge with block (sum): #{h1.merge(h2) { |k, o, n| o + n }.inspect}"
h1.update(h2)
puts "Update modifies original: #{h1.inspect}"

#7. TRANSFORM KEYS / VALUES
puts "\n TRANSFORM KEYS / VALUES"
nums = { "one" => 1, "two" => 2, "three" => 3 }
puts "Transform keys to symbols: #{nums.transform_keys(&:to_sym).inspect}"
puts "Transform values to squares: #{nums.transform_values { |v| v * v }.inspect}"

#8. INVERT / FLATTEN / TO_A / TO_H
puts "\n INVERT / FLATTEN / TO_A / TO_H"
h = { a: 1, b: 2, c: 3 }
puts "Invert keys and values: #{h.invert.inspect}"    #{1 => :a, 2 => :b, 3 => :c}
puts "Flatten: #{h.flatten.inspect}"                  # [:a, 1, :b, 2, :c, 3]
puts "To Array: #{h.to_a.inspect}"                    #[[:a, 1], [:b, 2], [:c, 3]]
puts "To Hash (again): #{h.to_a.to_h.inspect}"        #{a: 1, b: 2, c: 3}

#9. DEFAULT VALUE / FETCH DEFAULT
puts "\n DEFAULT VALUE"
default_hash = Hash.new("Not Found")
puts "Default value example:"
puts default_hash[:x]  # => "Not Found"
default_hash[:a] = 10
puts default_hash.inspect

#10. CLEAR / DELETE_IF / REPLACE
puts "\n CLEAR / DELETE_IF / REPLACE"
h = { a: 10, b: 20, c: 30, d: 40 }
h.delete_if { |_, v| v < 25 }
puts "After delete_if (<25): #{h.inspect}"
new_hash = { x: 100, y: 200 }
h.replace(new_hash)
puts "After replace: #{h.inspect}"
h.clear
puts "After clear: #{h.inspect}"

#11. COMPARISON & EQUALITY
puts "\n COMPARISON & EQUALITY"
x = { a: 1, b: 2 }
y = { b: 2, a: 1 }
puts "Equal? #{x == y}"   # true, order doesn’t matter
puts "Eql? #{x.eql?(y)}" # true

#12. ZIP & CONVERT FROM ARRAYS
puts "\n ZIP / CONVERT"
keys = [:name, :age, :city]
values = ["Anu", 22, "Hyderabad"]
combined = keys.zip(values).to_h
puts "Zip to hash: #{combined.inspect}"

#13. DIG (SAFE NESTED ACCESS)
puts "\n DIG (SAFE ACCESS)"
nested_hash = { student: { details: { name: "Anu", marks: 90 } } }
puts "Dig name: #{nested_hash.dig(:student, :details, :name)}"
puts "Dig non-existing safely: #{nested_hash.dig(:student, :info, :phone).inspect}"

#14. COMPACT, SELECT!, REJECT!
puts "\n COMPACT / SELECT! / REJECT!"
h = { a: 1, b: nil, c: 3, d: nil }
puts "Compact: #{h.compact.inspect}"
h.select! { |_, v| v != nil }
puts "Select! modifies original: #{h.inspect}"
h.reject! { |k, _| k == :a }
puts "Reject! removes a: #{h.inspect}"
