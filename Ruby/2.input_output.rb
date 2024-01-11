name = "Bob"
age = 25
puts "Name: %s, Age: %d" % [name, age]
puts "Name: #{name}, Age: #{age}"

#Gets Method : It reads input as a string and includes the newline character ("\n"), so you often need to use chomp to remove it.
#The chomp method is a string method that gets rid of blank spaces at the end of strings. 
#It is helpful while performing input processes
print "Enter a string: "
inp = gets.chomp()
puts "The string has #{inp.size} characters"


#File Input Output method
file = File.open("output.txt", "w")         # Open the file in write mode
file.puts "Hello, world!"                   # Write a line to the file
file.close()                                # Close the file


puts ("Whoa") && false
