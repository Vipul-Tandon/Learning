# Predicate Enumerable Methods: is indicated by a question mark (?) at the end of the method name and returns either true or false

## a) all?: Checks if a given block returns true for all elements in the collection.
numbers = [1, 2, 3, 4, 5]
result = numbers.all? { |n| n > 0 }
puts result  # Output: true


## b) any?: Checks if a given block returns true for at least one element in the collection.
numbers = [1, 2, 3, 4, 5]
result = numbers.any? { |n| n < 0 }
puts result  # Output: false


## c) none?: Checks if none of the elements in the collection satisfy the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.none? { |n| n < 0 }
puts result  # Output: true


## d) one?: Checks if exactly one element in the collection satisfies the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.one? { |n| n == 3 }
puts result  # Output: true


## e) count: Returns the number of elements in the collection that satisfy the given block.
numbers = [1, 2, 3, 4, 5]
count = numbers.count { |n| n.even? }
puts count  # Output: 2


## f) include?: Checks if the collection includes a specific element.
fruits = ["apple", "banana", "orange"]
result = fruits.include?("banana")
puts result  # Output: true


## g) member?: An alias for `include`?.

## h) find: Returns the first element in the collection that satisfies the given block.
numbers = [1, 2, 3, 4, 5]
result = numbers.find { |n| n.even? }
puts result  # Output: 2


## i) find_index: Returns the index of the first element that satisfies the given block.
numbers = [1, 2, 3, 4, 5]
index = numbers.find_index { |n| n == 3 }
puts index  # Output: 2


## j) grep: Returns an array of elements that match a given pattern or regular expression.
numbers = [1, 2, 3, 4, 5]
index = numbers.find_index { |n| n == 3 }
puts index  # Output: 2

