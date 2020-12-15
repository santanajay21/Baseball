class PlayerController < ApplicationController

    get '/players' do
        #display the index view (read information in theis route)
        @players = Player.all
        erb :"players/index"
    end

    get '/players/new' do
        #display new player(creats action)
        if !logged_in?
            redirect '/login'
        end
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
        if !logged_in?
            redirect '/login'
        end
        player = current_user.players.build(params)
        #player.user_id = session[:user_id]
        #player = Player.new(params)
        #player.user = current_user
        player.save
        redirect '/players/new'
    end 

    get '/players/:id/edit' do
        @player = Player.find(params["id"])
        if @player.user != current_user
            redirect '/players'
        end
            erb :"/players/edit"  

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
        if @player.user != current_user
            redirect '/players'
        end
        @player.destroy
        redirect '/players'
        #binding.pry
    end 



    private 
    def redirect_if_not_authorized
        if @player.user != current_user
            redirect '/players'
        end
    end

end