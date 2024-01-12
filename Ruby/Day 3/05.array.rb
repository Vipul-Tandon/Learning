# ---------------------------------------------
# Display method to display arrays
def display(arr) 
    print "["
    for i in 0...arr.size()
        print arr[i]
        if (i < arr.size()-1)
            print ", "
        end
    end
    puts "]"
end
# --------------------------------------------

arr1 = [1, 2, 3, 4, 5, "Hello"]
puts arr1

# or

arr1.each do |i|
    puts i
end


# Creating Arrays
## creating dynamicaly
arr2 = Array.new(5, 0)                  # Array of size 5 and all elements equal to 0
display(arr2)

## array containing mutable objects
arr3 = Array.new(4) {Hash.new()}

## multidimensional arrays
arr4 = Array.new(5) {Array.new(2, 4)}
arr5 = Array.new(5) {Array.new(3) {Array.new(2, 0)}}
display(arr3)
display(arr4)
display(arr5)


# Accessing Arrays
## negative indexes access array from the last
puts arr1[-1]                           # "Hello"
puts arr1[-2]                           # 4

## using range to acces a part of array
display(arr1[0..4])

## .fetch() method to throw out of bounds error
puts arr1.fetch(100, "Out of bounds")


# Adding items to Arrays
## .push() method and 
arr6 = Array.new()
arr6.push(7)                            # [7]
display(arr6)
arr6 << 8 << 9                          # [7, 8, 9]
display(arr6)

## .insert() method to add multiple elements at any position
arr6.insert(2, 'orange', 'pear', 'grapefruit')
display(arr6)                           # [7, 8, orange, pear, grapefruit, 9]

# Deleting elements
## .delete() method: To delete a particular element anywhere in an array
arr7 = [26, 27, 32, 33, 40]
display(arr7)
arr7.delete(27)
display(arr7)

## .delete_at(index): To delete an element at a particular index
arr7.delete_at(3)
display(arr7)

## .compact! method to remove nil values
arr8 = ['foo', 0, nil, 'bar', 7, 'baz', nil]
display(arr8)
arr8.compact!                           # Changes the array permanently
display(arr8)

# Iterating over elements
## .map method changes the array by modifin
arr9 = [1, 2, 3, 4, 5]
display(arr9)
arr9.map! {|a| 2*a}
display(arr9)
### Note:: map! changes the original array permanantly while map generates new array

## .select and .reject
arr10 = [1, 2, 3, 4, 5, 6]
arr10.select {|a| a > 3}        #=> [4, 5, 6]
arr10.reject {|a| a < 3}        #=> [3, 4, 5, 6]

