module Fetcher
    # class method - runs automatically when the module is included in  a class
    def self.included(klass)
        puts "#{klass} has been included"
        attr_accessor :fetch_count
    end
    def fetch(item)
        @fetch_count ||=0 # conditionally set to 0
        @fetch_count += 1
        puts "[#{@name}, #{@fetch_count}]I'll bring that #{item} right back!"
    end
end

class Dog
include Fetcher
    def initialize(name)
        @name = name
    end
end

class Cat
include Fetcher
    def initialize(name)
        @name = name
    end
end


dog = Dog.new("Fido")
5.times do
    dog.fetch("ball")
    
end

cat = Cat.new("Garfield")
3.times do
    cat.fetch("laser pointer")
end

