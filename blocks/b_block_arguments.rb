def get_name
    print "enter your name: "
    name = gets.chomp
    yield name
    name
end

my_name = get_name do |name|
    puts "thats cool name, #{name}"
end

puts "my_name: #{my_name}"

# puts "my_name: #{my_name}"
