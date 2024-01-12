# Method names should begin with a lowercase letter. 
# If you begin a method name with an uppercase letter, 
# Ruby might think that it is a constant and hence can parse the call incorrectly.

# return : Ruby always returns the last line of code in the function
def m1(a1 = "Intern" , a2 = "Metafic") 
    puts "#{a1} at #{a2}"
    2+3
end

value = m1("Core developer")
puts value


# Varaible number of parameters
def variable_params (*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
        print "The parameters are #{test[i]}, "
    end
end
variable_params "Zara", "6", "F"
variable_params "Mac", "36", "M", "MCA"
puts


# Class methods: methods which can be used without creating instance of the class
# These methods are defined: class_name.method_name

class Accounts
    def reading_charge              # normal method
        puts "Hi from instance method"
    end
    def Accounts.return_date        # class method
        puts "Hi from class method"
    end
end

ob1 = Accounts.new
ob1.reading_charge()
Accounts.return_date()


# Public, Private and Protected methods
# public` methods can be called from anywhere.
# private` methods can only be called within the defining class.
# protected` methods can be called within the defining class and its subclasses.

class MyClass
    def public_method
    end

    private

    def private_method
    end

    protected

    def protected_method
    end
end


# Changing method name everywhere
alias m2 m1;
m2("Team lead")


# method_missing
## Method missing let’s us customize our own error messages with the concept of method overriding. 
## This is only when we wouldn't want to get an exception.

class User
    def method_missing(method_name, *args, &block)
        # puts "Method '#{method_name}' not found."
        attr_name = method_name.to_s[4..]
        instance_variable_set("@#{attr_name}", args[0])
    end
end

user = User.new
user.set_first_name("Vipul")
puts user.instance_variable_get("@first_name") 
  
  


