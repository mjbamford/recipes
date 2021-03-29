#!/usr/bin/env ruby

require "./routes"

begin
    print "Enter a command: (list, new, delete, quit) "
    request, param = gets.chomp.downcase.strip.split(' ')
    Routes.dispatch(request, param)
end until [ 'quit', 'q'].include? request