require "tty-table"

module Views
    module Recipes
        def self.index(recipes)
            return puts("-- No Recipes :(")  unless recipes.length > 0

            table = TTY::Table.new(
                ["id", "name", "difficulty"],
                rows_for(recipes)
            )
            puts table.render(:ascii)
        end

        def self.rows_for(recipes)
            recipes.map do |recipe|
                [ recipe.id, recipe.name, recipe.difficulty ]
            end
        end
    end
end