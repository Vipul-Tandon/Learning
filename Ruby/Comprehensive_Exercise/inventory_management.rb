# Create a Class
class InventoryItem
    attr_accessor(:name, :category, :quantity, :price)

    @@all_items = []

    def initialize(name, category, quantity, price)
        @name = name.to_s
        @category = category.to_s
        @quantity = quantity.to_i
        @price = price.to_f
        @@all_items << self
    end

    def display_details
        puts "Item details are:-"
        puts "---------------------"
        puts "Name: #{@name}"
        puts "Category: #{@category}"
        puts "Quantity: #{@quantity}"
        puts "Price: Rs #{@price}"
        puts "---------------------"
    end

    def InventoryItem.get_all_items
        @@all_items
    end

    def InventoryItem.get_total_value
        total = 0
        @@all_items.each do |item|
            total += item.quantity*item.price
        end
        return total
    end
end



# Initialise Instances
spoon = InventoryItem.new("Spoon", "kitchen", 9, 150)
pen = InventoryItem.new("Pen", "stationary", 100, 10)
laptop = InventoryItem.new("Laptop", "electronics", 50, 55000.34)



# Array and Iteration
items = InventoryItem.get_all_items
items.each do |item|
    item.display_details()
end



#Hash and MethodS
def convert_to_hash(item)
    item_hash = {
        name: item.name,
        category: item.category,
        quantity: item.quantity,
        price: item.price
    }
end

def print_details(item)
    item_hash = convert_to_hash(item)
    puts "Item details using hash:- "    
    puts item_hash
end
print_details(spoon)



# Control Flow
def is_below_10(item)
    if (item.quantity < 10)
        puts "Low stock, order more."
    else
        puts "Sufficient quantity."
    end
end

is_below_10(spoon)
is_below_10(pen)



# User interaction
puts "Enter item details"
print "Name: "
name = gets.chomp
print "Category: "
category = gets.chomp
print "Quantity: "
quantity = gets.to_i
print "Price: "
price = gets.to_f

new_item = InventoryItem.new(name, category, quantity, price)
new_item.display_details()



# Class Inheritance
class DiscountedItem < InventoryItem
    attr_accessor(:discount_percentage)

    def initialize(name, category, quantity, price, discount_percentage)
        @name = name.to_s
        @category = category.to_s
        @quantity = quantity.to_i
        @price = price.to_f
        @discount_percentage = discount_percentage
    end

    def display_details
        new_price = @price - (@price*(@discount_percentage/100.0))
        puts "Item details are:-"
        puts "---------------------"
        puts "Name: #{@name}"
        puts "Category: #{@category}"
        puts "Quantity: #{@quantity}"
        puts "Price: Rs #{new_price} after discount"
        puts "---------------------"
    end
end

mobile = DiscountedItem.new("mobile", "electronics", 20, 15000, 5)
mobile.display_details()



# Class Interaction
total = InventoryItem.get_total_value()
puts "The total value of the inventory is: Rs #{total}"
