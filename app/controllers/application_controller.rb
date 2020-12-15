class ApplicationController < Sinatra::Base


    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret,'yerrr'
    end


    get '/' do
        "Welcome in !"
    end

    helpers do 

        def logged_in?
            !!current_user
        end
        def current_user
           @current_user ||= User.find(session[:user_name]) if session[:user_name]
        end
    end



    


end