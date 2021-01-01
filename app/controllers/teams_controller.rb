class TeamsController < ApplicationController 
    
    get '/teams/new' do 

        erb :"teams/new"
    end

    post  '/teams' do 
        team = Team.create(params)
        #binding.pry
        redirect "/teams"
    end
    
    get '/teams' do 
        @teams = Team.all  
        erb :"teams/index"
    end

    get '/teams/:id' do 
        @team = Team.find_by(id: params[:id])
        erb :"teams/show"
    end
end

    