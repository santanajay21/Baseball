class PlayerController < ApplicationController

    get '/players' do
        #display the index view
        @players = Player.all
        erb :"players/index"
    end

    get '/players/:id' do 
        #display show view, get one movie
    end

    get '/players/new' do
        #display new player
    end

    post '/players' do
        #create new player
    end 

    get '/players/:id/edit' do
        #display the edit view 
    end

    #update the data base based on the edit form 
    put '/players/:id' do 
    end

    #delete one movie 
    delete '/players/:id' do 
    end 
end