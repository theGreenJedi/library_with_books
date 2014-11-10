
require_relative 'lib/connect'
require_relative 'lib/models'


# Nuke all of the rows just so we can start fresh.
Patron.delete_all

p = Patron.new

puts "Attempting to save an invalid Patron..."
if p.save
  puts "FAILURE: The patron was saved even though it was missing fields."
  exit
else
  puts "SUCCESS: ActiveRecord prevented the patron from being saved."
end



p.first_name = "bob"
p.last_name  = "dole"
puts "Attempting to save a valid Patron..."
if p.save
  puts "SUCCESS: The patron could be saved because its first_name and last_name were present."
else
  puts "FAILURE: Something prevented the patron from being saved."
  puts "         Here were the validation messages:"
  puts "         #{ p.errors.messages }"
end

