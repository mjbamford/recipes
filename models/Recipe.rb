require 'yaml'
require_relative './ActiveRecord'
require './lib/Logger'

class Recipe < ActiveRecord
    include Logger

    attr_reader :name, :ingredients, :instructions
    attr_accessor :difficulty

    @number_of_instances = 0

    def self.number_of_instances
        @number_of_instances
    end

    def self.number_of_instances=(value)
        @number_of_instances = value
    end

    def initialize(name, difficulty = nil)
        @name = name
        @ingredients = []
        @instructions = []
        @difficulty = difficulty
        log "Created an instance of Recipe"
        log "Total Recipes created: #{self.class.number_of_instances += 1}"
    end

    def to_s
        [ 
            "Name: #{@name}",
            "Difficulty: #{@difficulty}",
        ].join(' ')
    end
end