require './models/ActiveRecord'

class User < ActiveRecord
    attr_reader :id
    attr_accessor :name

    def initialize
        @id = 666
    end
end