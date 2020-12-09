require 'bundler/setup'
Bundler.require 



#require classes
#require_relative '../app/models/baseball'

require_all 'app'

ENV['SINATRA_ENV'] ||= 'development'





#connect to a data base 
ActiveRecord::Base.establish_connection({ 
    adapter: 'sqlite3',
    database: 'bd/development.sqlite'
})


