=begin 
    source: http://ruby-for-beginners.rubymonstas.org/blocks.html

    a block is the same as method except it does not have a name
    does not belog to an object

    accepts arguments -> returns a value; always passed to a method call 

    blocks are a chunk of code that you associate with a method call
    while the method runs, it can invoke the block one or more times
    
    they are more or less like callback functiosn in JavaScript
    http://frontendcollisionblog.com/javascript/ruby/2015/04/20/from-javascript-to-ruby-using-blocks-like-callbacks.html
=end

# loop do
#     puts "Hello world!"
# end

3.times do
    puts "hello world!"
    true
end

# we can't use return inside of blocks
# but the last line of the block will be returned 