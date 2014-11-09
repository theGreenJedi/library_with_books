####################################################
# This script demonstrates the behavior of the
# #save! method when an object is invalid.
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


begin
  puts "Getting ready to save!"
  # This will raise an exception because the book
  # fails its validation check.
  book.save!

  puts "  The save was successful!"
rescue
  puts "  The save failed :'("
end


puts "Does the book that think it's valid?"
if book.valid?
  puts "  Yup!"
else
  puts "  Nope!  Here are the errors: #{ book.errors.messages }"
end
