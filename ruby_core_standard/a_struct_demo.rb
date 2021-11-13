# class Customer
#     attr_accessor :name, :email 

#     def initialize(name, email)
#         @name, @email = name, email
#     end
# end    


# customer = Customer.new("Jason", "jason@teamtreehouse.com")
# puts customer.inspect

# with struct

Customer = Struct.new(:name, :email)
customer = Customer.new("Jason", "jason@teamtreehouse.com")
puts customer.inspect