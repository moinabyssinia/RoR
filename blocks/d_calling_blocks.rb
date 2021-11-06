##################################################
# using the block call method
# # we can also assign a block to a variable
# def get_name(prompt, &block)
#     print prompt + ": "
#     name = gets.chomp

#     print "Enter your age: "
#     age = gets.chomp.to_i

#     # calling the block here
#     block.call(name, age)
#     name
# end
##################################################

##################################################
# or doing it with yield keyword
def get_name(prompt, &block)
    if block_given?
        print prompt + ": "
        name = gets.chomp

        print "Enter your age: "
        age = gets.chomp.to_i

        # # calling the block here
        yield name, age
        name
    else
        "No block given :("
    end
end
##################################################


my_name = get_name("Enter your name") #do |name, age|
#     puts "thats cool name, #{name}"
#     puts "you are #{age} years young, basically a spring chicken!"
# end

puts "my_name: #{my_name}"

