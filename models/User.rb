require './models/ActiveRecord'
require './lib/Logger'

class User < ActiveRecord
    include Logger

    attr_accessor :name

    def initialize(name = 'Anonymous')
        @name = name
        log "Created a user with name #{@name}"
    end
end