# creating a shopping list
def create_list 
    print "what is the list name? "
    name = gets.chomp


    hash = { "name": name, "items": []}
end

# to add an item to the list
def add_list_item
    print "what is the item called? "
    item_name = gets.chomp 

    print "How much? "
    quantity = gets.chomp.to_i 

    hash = { "name": item_name, "quantity": quantity }
    return hash
end


def print_separator(character = "-")
    puts character * 80
end


def print_list(list)
    puts "List: #{list[:name]}"
    
    print_separator()

    # heading
    puts "\tItem: " + "\t\t\t"  + "Quantity\n"

    list[:items].each do |item|
        
        puts "\t" + item[:name] + "\t\t\t"  + item[:quantity].to_s
    end

    print_separator()
end



list = create_list()

# add the grocery items to the main list
list[:items].push(add_list_item)
list[:items].push(add_list_item)

puts print_list(list)