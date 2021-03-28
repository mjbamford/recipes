module Views
    module Recipes
        def self.create
            print "Name: "
            name = gets.chomp.strip
            print "Difficulty: "
            difficulty = gets.chomp.strip.to_i
            [ name, difficulty ]
        end
    end
end
