#A Hash is a collection of key-value pairs (like dictionaries in Python or maps in Java)
#Each key is unique and it can be string/symbol
#Creating Hashes
Student1 = { "name" => "Anu", "age" => 22, "course" => "Java" }
person = { name: "Mahi", age: 22 }
hash1 = Hash.new              # => {}
hash2 = Hash.new(0)           # Default value 0
hash3 = Hash[:x, 10, :y, 20]  # => {:x=>10, :y=>20}

#Accessing 
puts "---- Accessing Values ----"
puts person[:name]           # Access value
puts Student1["name"]

#Modifying Hash
puts "---- Modifying Hash ----"
puts "---- Hash before modification ----"
puts person.inspect

person[:city] = "Hyderabad"  # Add new key
person[:age] = 23            # Update value
puts "---- Hash after modification ----"
puts person.inspect

puts "---- Hash after deleting key----"
person.delete(:city)         # Remove key
puts person.inspect    #{name: "Mahi", age: 23}

puts "---- Listing Keys----"
puts Student1.keys     # => [:name, :age]

puts "---- Listing Values----"
puts Student1.values   # => ["Mahi", 23]

puts "---- Iterate through Hash----"
Student1.each { |key, value| puts "#{key} => #{value}" }
puts "\n"

puts Student1.inspect 
puts "\n"

Student1.each do |key, value|
  puts "#{key} => #{value}"
end
