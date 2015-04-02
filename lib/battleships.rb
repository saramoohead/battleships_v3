require 'sinatra/base'
require_relative 'board'
require_relative 'cell'
require_relative 'game'
require_relative 'player'
require_relative 'water'
require_relative 'ship'

class Battleships < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
  get '/' do
    erb :index
  end

  post '/play_game' do
    @name = params[:name]
    board = Board.new({size: 9, cell: Cell})
    board.fill_all_content(Water.new)
    @name << "Player 1" if @name == ""
    @data = board.rows

    erb :play_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
