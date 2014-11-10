
require_relative 'lib/connect'
require_relative 'lib/models'


a = Author.new

puts "Attempting to save an invalid Author..."
if a.save
  puts "FAILURE: The author was saved even though it was missing fields."
  exit
else
  puts "SUCCESS: ActiveRecord prevented the author from being saved."
end



a.name       = "Brian Lauber"
a.birth_year = "yesterday"
puts "Attempting to save an Author with an invalid birth_year..."
if a.save
  puts "FAILURE: The author was saved, but its birth year was NOT an Integer!"
  exit
else
  puts "SUCCESS: ActiveRecord prevented the author from being saved."
end


a.birth_year = 1922
puts "Attempting to save a valid Patron..."
if a.save
  puts "SUCCESS: The author could be saved because its fields were valid."
else
  puts "FAILURE: Something prevented the author from being saved."
  puts "         Here were the validation messages:"
  puts "         #{ p.errors.messages }"
end

