# namespacing the class in a module
module LaserBots
    class Player
        attr_reader :name
        def initialize(name)
            @name = name
        end
    end

    class Robot
        att_reader :name 
        def initialize(name)
            @name = name
        end
    end

    def target_player(player)
        Player.new(name)
    end

end

# tell ruby where the class is
# also use the constant resolution operator
player = LaserBots::Player.new("Jason")
puts player.name    