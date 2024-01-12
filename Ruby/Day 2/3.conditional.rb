# The only false values in Ruby are the values nil and false themselves. That's it! Everything else is considered true. 
# Even the string "false" is true in conditional expressions! You might be familiar with the number 0 or an empty string ("") being equivalent to false. 
# This isn't the case with Ruby, so be careful when writing those expressions, or you'll have more bugs than a decomposing body.

# 0 is considered true
if 0 
    puts "0 is true"
else
    puts "0 is false"
end

# empty string is considered true
if ""
    puts "empty string is true"
else
    puts "empty string is false"
end

# Only nil and false are considered false
if nil
    puts "nil is true"
else
    puts "nil is false"
end

# only the valse is compared in ==
if (5 == 5.00)
    puts "5 and 5.00 are equal in value"
else
    puts "They are unequal"
end

# eql? checks both the value type and the actual value it holds.
if (5.eql?(5.00))
    puts "5 and 5.00 are equal in value and type"
else
    puts "5 and 5.00 are unequal in type"
end

#equal? checks whether both values are the exact same object in memory.
a = 5
b = 5
puts a.equal?(b) #=> true


#This happens because computers can’t store strings in the same efficient way they store numbers. 
#Although the values of the variables are the same, the computer has created two separate string objects in memory.
a = "hello"
b = "hello"
puts a.equal?(b) #=> false

