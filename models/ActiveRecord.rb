require 'yaml'

class ActiveRecord
    RECIPES = YAML.load(File.read('recipes.yml'))

    def save
        RECIPES << self
        File.open('recipes.yml', 'w') do |file| 
            file.write(RECIPES.to_yaml)
        end
    end
end