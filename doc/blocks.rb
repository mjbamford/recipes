def test_a_block
    puts yield 1
    puts "WORK 1: I'm starting `test_a_block`"
    puts yield 2
    puts "WORK 2: I'm finishing `test_a_block`"
    puts yield 3
end

test_a_block { |value| "I'm block work #{value}" }