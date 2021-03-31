require './models/ActiveRecord'

module Logger
    class Log < ActiveRecord
        def self.file_name
            "log.yml"
        end

        def initialize(message)
            @message = message
            save
        end
    end

    def log(message)
        Log.new(message)
    end
end