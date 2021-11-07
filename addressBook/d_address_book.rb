require "./a_contact"
require "yaml"

class AddressBook
    # not to use the @ sign when refering to the contacts
    attr_reader :contacts

    def initialize
        @contacts = []
        # as you initialize open any existing contact
        open()
    end

    # to write the contact to a file
    def open
        if File.exists?("contacts.yml")
            # in this case load the contacts in file 
            # and load them to @contacts
            @contacts = YAML.load_file("contacts.yml")
        end
    end

    def save
        File.open("contacts.yml", "w") do |file|
            file.write(contacts.to_yaml)
        end
    end

    # create a method which will display a menu on a loop
    def run
        loop do
            puts "Address Book \n"
            puts "a: Add Contact"
            puts "e: Exit"
            puts "p: Print Address Book"
            puts "s: search"
            puts 


            print "Enter your choice: "
            input = gets.chomp.downcase
            
            case input
            when 'a'
                add_contact
            when 'p'
                print_contact_list
            when 's'
                choose_search_method
            when 'e'
                # save it before you quit it 
                save()
                break
            end 
        end
    end


    # add contact + number + address
    def add_contact
        contact = Contact.new
        print "First Name: "
        contact.first_name = gets.chomp
        print "Middle Name: "
        contact.middle_name = gets.chomp
        print "Last Name: "
        contact.last_name = gets.chomp

        loop do
            puts "\nAdd phone number or address"
            puts "p: Add phone number"
            puts "a: Add address"
            puts "(Any other key to go back)"

            response = gets.chomp.downcase 

            case response
            when 'p'
                print "Enter kind: "
                kind = gets.chomp
                print "Enter number: "
                number = gets.chomp

                contact.add_phone(kind, number)
            when 'a'
                print "Enter kind: "
                kind = gets.chomp 
                print "Enter street_1: "
                street_1 = gets.chomp 
                print "Enter street_2: "
                street_2 = gets.chomp 
                print "Enter city: "
                city = gets.chomp 
                print "Enter state: "
                state = gets.chomp 
                print "Enter postal_code: "
                postal_code = gets.chomp 

                contact.add_address(kind, street_1, street_2, city, state, postal_code)
            else
                puts "\n"
                break
            end
        end


        contacts.push(contact)

    end

    # print contacts list
    def print_contact_list
        puts "Contacts List"
        contacts.each do |contact|
            puts contact.to_s('last_first')
        end
    end

    # to print results
    def print_results(search, results)
        puts "Name search results (#{search})"

        results.each do |item|
            # get essentials
            puts item.to_s('full_name')
            item.print_phone_number
            item.print_addresses
            puts "\n"
        end
    end


    # provide search options for menu
    def choose_search_method
        print "(a) by name; (b) by phone number; (c) by address: " 
        response = gets.chomp 

        case response
        when 'a'
            print "Enter name: "
            find_by_name(gets.chomp)
        when 'b'
            print "Enter number: "
            find_by_phone_number(gets.chomp)
        when 'c'
            print "Enter adderess: "
            find_by_address(gets.chomp)
        end
    end


    # search by contacts name
    def find_by_name(name)
        results = []
        contacts.each do |item|
           
            if item.full_name.downcase.include?(name.downcase)
                results.push(item) unless results.include?(item)
            end
        end
        
        print_results(name, results)
    end

    # serach by contacts phone number
    def find_by_phone_number(number)
        results = []
        search = number.gsub("-", "") #strip away dashes

        contacts.each do |item|
            item.phone_numbers.each do |phone|
                if phone.number.gsub("-","") == search
                    results.push(item) unless results.include?(item)
                end
            end
        end
        
        print_results(number, results)
    end

    # search by address
    def find_by_address(query)
        results = []
        search = query.downcase

        contacts.each do |contact|
            contact.addresses.each do |address|
                if address.to_s('long').downcase.include?(search)
                    results.push(contact) unless results.include?(search)
                end
            end
        end
        print_results(query, results)
    end

end



address_book = AddressBook.new

address_book.run 