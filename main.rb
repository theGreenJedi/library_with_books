
require 'pry'

# Connect to the database
require_relative 'connect'

# Load the models so that they'll be available
# to the PRY console.
require_relative 'models'

# Finally, launch the PRY console.
binding.pry
