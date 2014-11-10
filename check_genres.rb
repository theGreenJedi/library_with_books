
require_relative 'lib/connect'
require_relative 'lib/models'


# Nuke all of the rows just so we can start fresh.
Genre.delete_all

g = Genre.new

puts "Attempting to save an invalid Genre..."
if g.save
  puts "FAILURE: The genre was saved even though it was missing its name."
  exit
else
  puts "SUCCESS: ActiveRecord prevented the genre from being saved."
end



g.name = "Epic Limerick"
puts "Attempting to save a valid Genre..."
if g.save
  puts "SUCCESS: The genre could be saved because the title was present."
else
  puts "FAILURE: Something prevented the genre from being saved."
  puts "         Here were the validation messages:"
  puts "         #{ g.errors.messages }"
end

