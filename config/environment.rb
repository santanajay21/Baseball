require 'bundler/setup'
Bundler.require 



#require classes
require_relative '../app/models/baseball'






#connect to a data base 
ActiveRecord::Base.establish_connection({ 
    adapter: 'sqlite3',
    database: 'bd/development.sqlite3'
})


