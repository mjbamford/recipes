module Views
    module Recipes
        def self.index(recipes)
            if recipes.length > 0
                puts "-- All Recipes"
                puts Recipe::all
            else
                puts "-- No Recipes :("
            end
        end
    end
end