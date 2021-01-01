class UsersController < ApplicationController 
    get "/signup" do 
        erb :"users/new"
    end

    post "/signup" do 
        user = User.create(params[:user])
            if user.save        
                session[:user_id] = user.id
                redirect '/teams'
            else 
                @errors = user.errors.full_messages.join(" - ")
                erb :"users/new"
    end
end