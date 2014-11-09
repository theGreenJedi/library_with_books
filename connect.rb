####################################################
# The only purpose of this library is to establish
# a connection with the SQLite3 database.  It will
# be loaded by every top-level script that needs to
# access the database.
####################################################

require 'active_record'

puts "Establishing connection..."

ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",
  database: "./library.db"
})

puts "Connected!"

