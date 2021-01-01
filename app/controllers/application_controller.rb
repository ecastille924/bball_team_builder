require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions 
    set :session_secret, 'top_session'
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/hello_world" do 
    Hello World 
  end

end
