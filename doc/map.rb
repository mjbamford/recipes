numbers = [ 1,2,3 ]

def map(ary)
    new_ary = []
    for value in ary do
        if block_given?
            new_ary << yield(value)
        end
    end
    new_ary
end

p map(numbers) { |value| value * 10 }