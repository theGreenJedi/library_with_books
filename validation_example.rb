
require_relative 'models'
require_relative 'connect'

# It's invalid because it's
# publication date isn't an Integer
invalid_book = Book.new(
  title: "Fancy Title"
)


begin
  puts "Getting ready to save!"
  # This will raise an exception
  invalid_book.save!

  puts "The save was successful!"
rescue
  puts "The save failed :'("
end


puts "Is the book actually valid? #{invalid_book.valid?}"

