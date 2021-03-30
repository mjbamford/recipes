class C0
    def who_am_i?
        self.class.log('who_am_i?', self)
    end

    def self.who_am_i?
        log('self.who_am_i?', self)
    end

    def self.log(method_name, message)
        puts "#{method_name}: #{message}"
    end
end

class C1 < C0
    def self.log(method_name, message)
        puts "*** " * 3
        super
        puts "*** " * 3
    end

    def who_am_i?
        self.class.log('C1#who_am_i', self)
    end
end

puts C0.who_am_i?
puts C0.new.who_am_i?
puts C1.who_am_i?
puts C1.new.who_am_i?
