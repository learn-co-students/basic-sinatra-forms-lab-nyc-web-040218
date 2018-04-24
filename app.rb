require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]

    # "Team Name: #{@name}"
    # "Coach: #{@coach}"
    # "Point Guard: #{@pg}"
    # "Shooting Guard: #{@sg}"
    # "Small Forward: #{@sf}"
    # "Power Forward: #{@pf}"
    # "Center: #{@c}"

    erb :team
  end

end
