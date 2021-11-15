module Inventoryable

    # tell the class to extend itself with the class methods
    # that are inside this module
    def self.included(klass)
        klass.extend(ClassMethods)
        klass.extend(Enumerable)
    end

    module ClassMethods
        # these are going to go to the class of what we want inventory
        def create(attributes)
            object = new(attributes)
            instances.push(object)
            return object
        end

        def instances
            @instance ||= []
        end


        def each(&block)
            instances.each(&block)
        end

        def in_stock_report
            puts "#{self.to_s} In Stock Report"
            reportable = instances.select{ |instance| instance.in_stock? }
            reportable.each do |item|
                line = []
                line.push("Item: #{item.attributes[:name]}")
                line.push("Stock: #{item.stock_count}")
                if item.attributes.include?(:size)
                    line.push("Size: #{item.attributes[:size]}")
                end
                puts line.join("\t")
            end
            puts "\n"
        end

    end



    def stock_count
        @stock_count ||= 0 # set it to 0 if it doesn't already exist
    
    end

    # method to define the stock count
    def stock_count=(number)
        @stock_count = number
    end

    # see if something is in stock
    def in_stock?
        stock_count > 0
    end
    
end

class Shirt
    include Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
        @attributes = attributes
    end

end

class Pant
    include Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
        @attributes = attributes
    end

end

class Accessory
    include  Inventoryable
    attr_accessor :attributes

    def initialize(attributes)
        @attributes = attributes
    end

end

shirt1 = Shirt.create(name: "MTF", size: "L")
shirt2 = Shirt.create(name: "MTF", size: "M")

shirt1.stock_count = 10 

puts "Shirt 1 stock count: %s" % shirt1.stock_count
puts "Shirt 2 stock count: %s" % shirt2.stock_count


puts "Shirt 1 in stock?: %s" % shirt1.in_stock?
puts "Shirt 2 in stock?: %s" % shirt2.in_stock?

pant = Pant.create(name: "Jeans", size: 'M')
pant.stock_count = 2
pant = Pant.create(name: "Jeans", size: 'S')
pant.stock_count = 4

accessory = Accessory.create(name: "Belt", size: "L")
accessory.stock_count = 1
accessory = Accessory.create(name: "Belt", size: "M")
accessory.stock_count = 1
accessory = Accessory.create(name: "Necklace")
accessory.stock_count = 1


Shirt.in_stock_report
Pant.in_stock_report
Accessory.in_stock_report