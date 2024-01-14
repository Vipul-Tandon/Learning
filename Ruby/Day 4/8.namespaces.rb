# Namespace in Ruby allows multiple structures to be written using hierarchical manner.
# The namespace in Ruby is defined by prefixing the keyword module in front of the namespace name.
# The name of namespaces and classes always start from a capital letter.
# You can access the sub members of double with the help of :: operator. It is also called the constant resolution operator.

module Geek
    class GeeksforGeeks 
        attr_reader :gfg
        def initialize(value)
            @gfg = value
        end
    end
     
    # Hierarchical namespace 
    module Geek_1 
       
        # Reuse of the class names
        class GeeksforGeeks 
        @@var = "This is the module Geek_1 " +
                "and class GeeksforGeeks"
        def printVar()
            puts @@var
        end
        end
    end
     
    # Hierarchical namespace
    module Geek_2 
       
      # Reuse of the class names
      class GeeksforGeeks 
        attr_reader :var
        def initialize(var)
          @var = var
        end
      end
    end
  end
 
obj_gfg = Geek::GeeksforGeeks.new("This is the module Geek " +
                                  "and class GeeksforGeeks") 
obj_gfg1 = Geek::Geek_1::GeeksforGeeks.new()
obj_gfg2 = Geek::Geek_2::GeeksforGeeks.new("This is the module Geek_2 " + 
                                           "and class GeeksforGeeks")
puts obj_gfg.gfg
puts obj_gfg1.printVar()
puts obj_gfg2.var




# Mixins: Modules can be used as mixins to add functionality to classes:
module MyModule
  def my_method
    puts "Mixins module"
  end
end

class MyClass
  include MyModule
end

obj = MyClass.new
obj.my_method()
