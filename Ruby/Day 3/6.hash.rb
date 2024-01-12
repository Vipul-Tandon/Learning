# Creating hash
## =>
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
puts grades["Jim Doe"]
## :
options = { font_size: 10, font_family: "Arial" }
puts options[:font_size]


# Comparing hash
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
puts h2[7]
h3 = { "a" => 1, "c" => 2, 7 => 35 }
h4 = { "a" => 1, "d" => 2, "f" => 35 }
puts h1 == h2   #=> false
puts h2 == h3   #=> true
puts h3 == h4   #=> false


# Adding new value
puts h1
h1.store("b", 3)
puts h1


# Iterating over values
# Can iterate through the keys and values of a hash using methods like each, each_key, and each_value.
h1.each do |key, value|
    print "[#{key}, #{value}] "
end
puts


# Altering hash
## .invert: keys become values & values become keys
h = { "pen": 1, "cap": 2, "bottle": 3}
puts h
hh = h.invert
puts hh
puts hh[1]


# Searching
## searching a key from its value
puts h.key(2)

## searching if key exists
puts h.key?("pencil")

## .select method
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
h8 = name_and_age.select {
    |key,value| (key == "Bob") || (value == 19)
}
puts h8


# Hash to Array
array = name_and_age.to_a
print array
puts