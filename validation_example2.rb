
require_relative 'models'
require_relative 'connect'

# It's invalid because it's
# publication date isn't an Integer
invalid_book = Book.new(
  title: "Fancy Title"
)


puts "Getting ready to save!"

# Attempt to save the invalid_book
if invalid_book.save
  puts "The save was successful!"
else
  puts "The save failed :'("
end  

puts "Is the book actually valid? #{invalid_book.valid?}"
