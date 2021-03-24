require_relative "../models/Recipe"

class RecipesController
    def self.index
        recipes = Recipe::all
        if recipes.length > 0
            puts "-- All Recipes"
            puts Recipe::all
        else
            puts "-- No Recipes :("
        end
    end

    def self.create
        print "Name: "
        name = gets.chomp.strip
        print "Difficulty: "
        difficulty = gets.chomp.strip.to_i

        recipe = Recipe.new name, difficulty
        recipe.save
    end

    def self.destroy(id)
        if recipe = Recipe.find(id)
            recipe.delete
        end
    end
end