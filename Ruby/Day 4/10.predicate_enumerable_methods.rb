# Predicate Enumerable Methods: is indicated by a question mark (?) at the end of the method name and returns either true or false

## a) all?: Checks if a given block returns true for all elements in the collection.
numbers = [1, 2, 3, 4, 5]
result = numbers.all? { |n| n > 0 }
puts result                                 # true


## b) any?: Checks if a given block returns true for at least one element in the collection.
numbers = [1, 2, 3, 4, 5]
result = numbers.any? { |n| n < 0 }
puts result                                 # false


## c) none?: Checks if none of the elements in the collection satisfy the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.none? { |n| n < 0 }
puts result                                 # true


## d) one?: Checks if exactly one element in the collection satisfies the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.one? { |n| n == 3 }
puts result                                 # true


## e) count: Returns the number of elements in the collection that satisfy the given block.
numbers = [1, 2, 3, 4, 5]
count = numbers.count { |n| n.even? }
puts count                                  # 2


## f) include?: Checks if the collection includes a specific element.
fruits = ["apple", "banana", "orange"]
result = fruits.include?("banana")
puts result                                 # true


## g) member?: An alias for `include`?.

## h) find: Returns the first element in the collection that satisfies the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.find { |n| n.even? }
puts result                                 # 2


## i) find_index: Returns the index of the first element that satisfies the given block.
numbers = [1, 2, 3, 4, 5]
index = numbers.find_index { |n| n == 3 }
puts index                                  # 2


## j) grep: Returns an array of elements that match a given pattern or regular expression.
words = ["apple", "banana", "orange", "grape"]
filtered_words = words.grep(/a/)
print filtered_words                         # ["apple", "banana", "grape"]


