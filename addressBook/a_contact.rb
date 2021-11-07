require "./b_phone_number" # require the name of the path to the file
require "./c_address" # but also remember that this runs all code in this file


class Contact
    attr_writer :first_name, :middle_name, :last_name
    attr_reader :phone_numbers, :addresses # by using this we don't have to use the @ sign down
    
    # wondering why Jason didn't use the initialize method
    # for the names
    def initialize
        @phone_numbers = [] # starting with no phone numbers
        @addresses = []
    end


    # add phone numbers
    def add_phone(kind, number)
        new_number = PhoneNumber.new
        new_number.kind = kind 
        new_number.number = number

        phone_numbers.push(new_number)
    end

    # add addresses
    def add_address(kind, street_1, street_2, city, state, postal_code)
        address = Address.new
        address.kind = kind
        address.street_1 = street_1
        address.street_2 = street_2
        address.city = city
        address.state = state
        address.postal_code = postal_code

        addresses.push(address)
    end


    # print out phone numbers
    def print_phone_number
        self.phone_numbers.each do |item|
            puts item
        end
    end

    # print out addresses
    def print_addresses
        puts "Addresses"
        addresses.each do |item|
            puts item.to_s('short')
        end
    end

    def first_name
        @first_name
    end

    def middle_name
        @middle_name
    end

    def last_name
        @last_name
    end

    def full_name
        full_name = first_name 
        if @middle_name.nil?
            full_name += " #{last_name}"
        else 
            full_name += " #{middle_name} #{last_name}"
        end

        # return as last line of the method
        full_name
    end

    # refer by last name and first name
    def last_first
        last_first = last_name
        if @middle_name.nil?
            last_first += ", #{first_name}"
        else 
            last_first += ", #{first_name} #{middle_name.slice(0,1)}."
        end

        last_first
    end

    
    def first_last
        first_name + " " + last_name
    end

    # overwrite the to_string method
    def to_s(format = 'full_name')
        case format
        when 'full_name'
            full_name
        when 'last_first'
            last_first
        when 'first_name'
            first_name
        when 'last_name'
            last_name
        else
            first_last
        end
    end

end

my_name = Contact.new

# name
my_name.first_name = "Michael"
my_name.middle_name = "Getachew"
my_name.last_name = "Tadesse"

# phone numbers
my_name.add_phone("cell", "407-668-5259")
my_name.add_phone("home", "+251-116-602292")
my_name.add_phone("work", "407-123-4567")


# addresses
my_name.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")


# puts my_name.inspect
puts my_name.to_s('last_first')
my_name.print_phone_number
my_name.print_addresses
