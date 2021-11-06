def block_method
    puts "first line"
    yield # come out of the block where the yield statment is
          # and execute the code inside the block
    yield
    puts "this comes after the yield keyword"
end

block_method do
    puts "this statement is called from the block."
end

block_method # this requires a block, so it will throw error