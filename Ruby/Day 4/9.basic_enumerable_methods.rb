# Enumerables are a set of convenient built-in methods in Ruby that are included as part of both arrays and hashes.
## a) each: t iterates through each element of a collection and executes a given block of code for each element.
[1, 2, 3].each { |x| puts x }

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }

## b) map (or collect): Transforms each element of a collection based on the block and returns a new array containing the results.
[1, 2, 3].map { |x| x * 2 }
# => [2, 4, 6]


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
print friends.map { |friend| friend.upcase }
puts

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
puts my_order.map { |item| item.gsub('medium', 'extra large') }

salaries = [1200, 1500, 1100, 1800]
puts salaries.map { |salary| salary - 700 }


## c) select (or find_all): Returns a new array containing elements for which the block evaluates to true.
[1, 2, 3, 4, 5].select { |x| x.even? }
# => [2, 4]

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
print friends.select { |friend| friend != 'Brian' }
puts

## d) reject: Returns a new array containing elements for which the block evaluates to false.
[1, 2, 3, 4, 5].reject { |x| x.even? }
# => [1, 3, 5]

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
print friends.reject { |friend| friend == 'Brian' }
puts


## f) reduce (or inject): Accumulates elements in the collection by applying a binary operation specified in the block.
## You should use #reduce when you want to get an output of a single value.
[1, 2, 3, 4].reduce { |sum, x| sum + x }
# => 10

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}


## g) count: Returns the count of elements in the collection that satisfy the given condition.
[1, 2, 3, 4, 5].count { |x| x.even? }
# => 2


## h) max and min: Returns the maximum and minimum elements in the collection
[1, 3, 2, 4].max
# => 4
[1, 3, 2, 4].min
# => 1


## i) sort: Returns a new array with elements sorted in ascending order based on the default comparison or a custom block.
[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].sort
# => [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]


## j) each_with_index: The first variable’s value is the element itself, while the second variable’s value is the index of that element within the array.
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }
