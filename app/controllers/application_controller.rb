require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        Hero.clear
        params[:team][:heroes].each {|h| Hero.new(h)}
        @hero1 = Hero.all[0]
        @hero2 = Hero.all[1]
        @hero3 = Hero.all[2]
        erb :team
    end
end
