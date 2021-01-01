class TeamsController < ApplicationController 
    
    get '/teams/new' do 
        erb :"teams/new"
    end

    post  '/teams' do 
        team = current_user.teams.create[params]
        #binding.pry
        redirect "/teams/index"
    end
    
    get '/teams' do 
        @teams = Team.all  
        erb :"teams/index"
    end

    get '/teams/:id' do 
        @team = Team.find_by(id: params[:id])
        erb :"teams/show"
    end

    get '/teams/:id/edit' do 
        #binding.pry
        @team = Team.find_by(id: params[:id])
        
        if @team
            erb :"teams/show"
        else 
            redirect "/teams"
        
        erb :"teams/edit"
    end

    patch '/teams/:id/edit' do 
        @team = Team.find_by(id: params[:id])
        @team.update(params[:team])
        redirect "/teams/#{@team.id}"
    end

    delete '/teams/:id' do 
        @team = Team.find_by(id: params[:id])
        @team.destroy
        redirect "/teams"
    end
end

    