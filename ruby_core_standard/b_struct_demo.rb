Customer = Struct.new(:name, :email) do
    # writing an instance method
    def name_with_email
        "#{name} <#{email}>"
    end
end
customer = Customer.new("Jason", "jason@teamtreehouse.com")

customer.each do |attribute|
    puts attribute
end


customer.each_pair do |name, value|
    puts "#{name} #{value}"
end