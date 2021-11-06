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
        print "#{name} hides! "
        yield actions[:hide]
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
monster.say { puts "Welcome to my home." }

# making it scream/scare a numner of times
2.times do
    monster.scream { |number| puts "#{number} times" }    
end

3.times do
    monster.scare do
        puts "Go away!"
    end        
end

monster.run { puts "Going to get you!" }
monster.hide { puts "Running away and hiding!" }

puts monster.actions


monster.print_scoreboard