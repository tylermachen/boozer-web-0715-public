require 'erb'
require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/boozer_development.db"
)

$: << '.'
Dir["app/models/*.rb"].each{|f| require f}
Dir["app/controllers/*.rb"].each{|f| require f}
Dir["app/views/*.rb"].each{|f| require f}
