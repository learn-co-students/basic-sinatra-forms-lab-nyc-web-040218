require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @newteam = []
    @newteam << params[:name] << params[:coach] << params[:pg] << params[:sg] << params[:sf] << params[:pf] << params[:c]
    erb :team
  end

  get '/team' do
    erb :team
  end

end
