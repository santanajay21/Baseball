class PlayerController < ApplicationController

    get '/players' do
        #display the index view (read information in theis route)
        @players = Player.all
        erb :"players/index"
    end

    get '/players/new' do
        #display new player(creats action)
        erb :"players/new"
    end

    get '/players/:id' do 
        #display show view, get one movie(read info)
        #binding.pry 
        @player = Player.find(params["id"])
        erb :"players/show"
    end

    
    post '/players' do
        #create new player(create action )
        player = Player.new(params)
        player.save
        redirect '/players'
    end 

    get '/players/:id/edit' do
        @player = Player.find(params["id"])
        #display the edit view (update)
        erb :"players/edit"

    end

    #update the data base based on the edit form 
    put '/players/:id' do 
        @player = Player.find(params["id"])
        #@player.update(params["name"])
        @player.update(params["player"])
        #binding.pry
        redirect "/players/#{@player.id}"
    end


    #delete one movie 
    delete '/players/:id' do 
        @player = Player.find(params["id"])
        @player.destroy
        redirect '/players'
        #binding.pry
    end 
end