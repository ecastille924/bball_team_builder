class TeamsController < ApplicationController 
    
    get '/teams/new' do 
    end
    
    get '/teams' do 
        @teams = Team.all  
        erb :"teams/index"
    end

    get '/teams/:id' do 
        @team = Team.find_by(id: params[:id])
        erb :"teams/show"
    end

    post  '/teams' do 
        team = Team.create(params)
        redirect "/teams"
    end
end