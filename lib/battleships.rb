require 'sinatra/base'

class Battleships < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
  get '/' do
    erb :index
  end

  get '/play_game' do
    @name = params[:name]
    erb :play_game
  end

  post '/play_game' do
    @name = params[:name]
    puts params.inspect
    @name << "Player 1" if @name == ""
    puts params.inspect
    erb :play_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
