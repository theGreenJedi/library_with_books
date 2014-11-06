
require 'active_record'
require 'pry'

puts "Establishing connection..."

ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "./library.db"
})

puts "Connected!"

binding.pry
