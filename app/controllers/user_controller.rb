class UserController < ApplicationController
     #users to be able to sign up 

     get '/signup' do
        erb :"users/new"
     end

     post "/signup" do
        #handle signing up the user
        #instantiate a user
        #binding.pry
        u = User.new(user_name: params["user_name"], password: params["password"]) #params is a hash with key value pairs
        #make sure the user signed up with valid data
        if u.user_name.blank? || u.password.blank? || User.find_by_user_name(params["user_name"])
            #invalid log in attempt 
            redirect '/signup'
        else
            u.save
            session[:user_name] = u.user_name
            redirect '/players'
            #valid attempt 
            #log them in 
        end 
        #log them in 
        #redirect them some where else
    end

    get '/logout' do
        session.clear
        redirect '/signup'
    end


end