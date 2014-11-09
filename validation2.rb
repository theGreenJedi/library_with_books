####################################################
# This script demonstrates the behavior of the
# #save method when an object is invalid.
####################################################

# Connect to the database
require_relative 'lib/connect'

# Load the models
require_relative 'lib/models'

# This Book is invalid because its #publication_date
# is not an Integer.
book = Book.new(
  title: "Fancy Title",
  publication_date: "today"
)


puts "Getting ready to save"

# Attempt to save the book.  The #save method
# will return false if the save failed.
if book.save
  puts "The save was successful!"
else
  puts "The save failed :'("
end  

# Does the book think that it's valid?
puts "Is the book actually valid? #{ book.valid? }"
