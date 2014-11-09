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

  # COMMON MISTAKE: The validation will fail, but no
  # exception will be raised.  Why?  Because the developer
  # should have invoked #save! instead of #save .  So,
  # the data never makes it to the database!!!
  book.save

  puts "  The save was successful!"
rescue ActiveRecord::RecordInvalid
  puts "  The save failed :'("
end


puts "Does the book that think it's valid?"
if book.valid?
  puts "  Yup!"
else
  puts "  Nope!  Here are the errors: #{ book.errors.messages }"
end
