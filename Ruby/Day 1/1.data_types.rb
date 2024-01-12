#Symbols: Symbols are light-weight strings. A symbol is preceded by a colon (:). 
#They are used instead of strings because they can take up much less memory. 
#Symbols have better performance.

domains = {:sk => "GeeksforGeeks", :no => "GFG", :hu => "Geeks"}
 
puts domains[:sk]
puts domains[:no]
puts domains[:hu]

name = :Vipul;
puts name



# Converting between diff data types
num1 = 1
str1 = "Minute"
final_string = num1.to_s + " " + str1
puts final_string


# Instance Variables: An instance variable name always starts with a @ sign. 
# They are similar to Class variables but their values are local to specific instances of an object.
class Customer 
      
    def initialize(id, name, addr)         
    # Instance Variables      
    @cust_id = id 
    @cust_name = name 
    @cust_addr = addr 
    end
      
    # displaying result 
    def display_details() 
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
    end
end
     
# Create Objects 
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya") 
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala") 
    
# Call Methods 
cust1.display_details() 
cust2.display_details()




# Class variable name always starts with @@ sign. 
# It is available across different objects. A class variable belongs to the class and it is a characteristic of a class. 
# They need to be initialized before use.
class Customer 
      
    # class variable 
    @@no_of_customers = 0
    
    def initialize(id, name, addr)       
    # An instance Variable 
    @cust_id = id 
    @cust_name = name 
    @cust_addr = addr 
    end
    
    # displaying result  
    def display_details() 
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
    end
    
    def total_no_of_customers() 
        
    # class variable 
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
    end
end
      
# Create Objects 
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya") 
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala") 

# Call Methods 
cust1.display_details() 
cust1.total_no_of_customers() 
cust2.display_details() 
cust2.total_no_of_customers() 