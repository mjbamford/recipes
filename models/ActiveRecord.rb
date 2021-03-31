require 'yaml'

class ActiveRecord
    attr_reader :id

    def self.file_name
        "#{name.downcase}s.yml"
    end

    def self.db
        @db ||= begin
            YAML.load(File.read(file_name))
        rescue
            []
        end
    end

    def self.all
        db
    end

    def self.find(id)
        return unless id 

        all.detect { |resource| resource.id == id.to_i }
    end
    
    def self.save(object)
        yield (all.length + 1)
        all << object
        File.open(file_name, 'w') { |file| file.write(all.to_yaml) }
        object
    end

    def save
        self.class.save(self) { |id| @id = id }
    end

    def self.delete(object)
        idx = all.index { |resource| resource&.id == object.id }
        all[idx] = nil
    end

    def delete
        return if @id.nil?

        @id = self.class.delete(self)
    end
end