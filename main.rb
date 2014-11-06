
require 'active_record'
require 'pry'

require_relative 'models'

puts "Establishing connection..."

ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "./library.db"
})

puts "Connected!"


binding.pry
