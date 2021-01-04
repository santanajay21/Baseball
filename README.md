# Baseball

Baseball is a Sinatra based app that allows a user to make a list of their favorite baseball players.They can also edit their players and delete players from their lists as well.

## Installation 
source "https://rubygems.org"


gem 'sinatra'
gem 'pry'
gem 'sqlite3'
gem 'rake'
gem 'activerecord', "~> 5.2.4"
gem 'sinatra-activerecord'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'tux'
gem 'bcrypt'
gem 'activemodel'

In order to to run this app , you must bundle install all of these gems.

## Usage 
You must run Shotgun in order and copy its url inoder to run the app on the sever.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

Players belong to a team --> players_id

Teams belong to the MLB --> teams_id


Players class 
has many players

Teams class 
has many players
