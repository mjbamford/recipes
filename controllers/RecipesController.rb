require_relative "../models/Recipe"
require_relative "../views/recipes/index"
require_relative "../views/recipes/create"
require_relative "../views/recipes/show"

module RecipesController
    def self.index
        recipes = Recipe::all
        Views::Recipes.index(recipes)
    end

    def self.show(id)
        recipe = Recipe.find(id)
        Views::Recipes.show(recipe)
    end

    def self.create
        name, difficulty = Views::Recipes.create
        recipe = Recipe.new name, difficulty
        recipe.save
    end

    def self.destroy(id)
        if recipe = Recipe.find(id)
            recipe.delete
        end
    end
end