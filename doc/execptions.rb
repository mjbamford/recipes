begin
    raise "Very bad day"
rescue => exception
    p exception
    puts exception.message
end

puts (1/0 rescue 0)