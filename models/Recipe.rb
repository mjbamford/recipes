class Recipe
    attr_reader :id, :name, :ingredients, :instructions
    attr_accessor :difficulty

    RECIPES = []

    @number_of_instances = 0

    def self.number_of_instances
        @number_of_instances
    end

    def self.number_of_instances=(value)
        @number_of_instances = value
    end

    def self.find(id)
        return unless id 

        RECIPES.detect { |recipe| recipe.id == id.to_i }
    end
    
    def self.all
        RECIPES
    end

    def initialize(name, difficulty = nil)
        @id = RECIPES.length + 1
        @name = name
        @ingredients = []
        @instructions = []
        @difficulty = difficulty
    end

    def save
        self.class::number_of_instances = self.class.number_of_instances + 1
        RECIPES << self
    end

    def delete
        return if @id.nil?

        idx = RECIPES.index { |recipe| recipe&.id == @id }
        @id = RECIPES[idx] = nil
    end

    def to_s
        [ 
            id,
            "#{@name}",
            "Difficulty:#{@difficulty}",
        ].join(' ')
    end
end