# loop is an infinite loop that will keep going unless you specifically request for it to stop, using the break command. (must write do)
i = 0
loop do
    puts("Hello world from loop")
    i+=1
    break if i >= 5
end

# while
while gets.chomp != "yes" do
    puts "Are we there yet?"
end



# ranges
# (1..5)      # inclusive range: 1, 2, 3, 4, 5
# (1...5)     # exclusive range: 1, 2, 3, 4

# # We can make ranges of letters, too!
# ('a'..'d')  # a, b, c, d

# .times (must write do)
# It works by iterating through a loop a specified number of times and even throws in the bonus of accessing the number it’s currently iterating through.
5.times do |number|
    puts "Alternative fact number #{number}"
end



# for (do is optional)
for i in 1 .. 3 
    puts ("Hello world from \"for\"")
end


#upto and #downto do exactly what you’d think they do from their names. 
#You can use these methods to iterate from a starting number either up to or down to another number, respectively.

5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10
puts()
10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5



# Using next to skip even numbers
for i in 1..10
    next if i.even?
    puts i
end
  