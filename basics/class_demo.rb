class Person # class names are rather written in PascalCase (It is similar to camelcase, but the first letter is capitalized)
    @@count = 0
    @@classVariable = 31
    # attr_reader :name # make it readable
    # attr_writer :name # make it writable
    attr_accessor :name # makes it readable and writable
  
    def initialize(name)
        @name = name
        
    end

    def Methodname(parameter)
      @@classVariable = parameter
      @@count += 1
    end
  
    def self.show_classVariable
      @@classVariable
    end
  
    def Person.get_counts # is a class method
      return @@count
    end
  
    private
  
    def private_method; end # Private methods go here
  end
  
  matz = Person.new("Yukihiro")
  p Person.show_classVariable
  matz.Methodname(32)
#   matz.show_name # Yukihiro
  p Person.show_classVariable
