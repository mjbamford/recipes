class Test
    attr_reader :id

    def self.save(instance)
        instance.id = 666
    end
end