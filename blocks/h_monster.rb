=begin  
    here the keyword self is introduced
=end

class Monster
    attr_reader :name, :actions

    def initialize(name) 
        # @ sign indicates that an instance variable
        # is being created
        @name = name
        @actions = {
            screams: 0,
            scares: 0,
            run: 0,
            hide: 0
        }
    end

    # i think replacing the inspect method
    def inspect
        puts "<#{name}, #{actions}>"
    end

    def say(&block)
        print "#{name} says ... "
        block.call
    end

    def scream(&block)
        # keep track of the number of screams
        actions[:screams] += 1
        print "#{name} screams! "
        yield actions[:screams]
    end

    def scare(&blocks)
        actions[:scares] += 1
        print "#{name} scares you! "
        yield
    end

    def run(&block)
        actions[:run] += 1
        print "#{name} runs! "
        yield actions[:run]
    end

    def hide(&block)
        actions[:hide] += 1
        print "#{name} hides! \n"
       
        # the self designates the class instance of monster
        # returns the current object in context to a block
        # useful in cases where you would like to have access
        # to the class inside of a block
        yield self if block_given?
    end

    def print_scoreboard
        40.times {print "-"}
        puts "\n#{name} scoreboard"
        40.times {print "-"}

        puts "\n"
        actions.each do |key, value|
            puts "#{key} \t\t #{value}"
        end
    end

end

monster = Monster.new("Fluffy")

monster.hide do |m|
    puts m.actions.inspect
end

monster.inspect