require 'sinatra/base'
require_relative 'board'
require_relative 'cell'
require_relative 'game'
require_relative 'player'
require_relative 'water'
require_relative 'ship'

class Battleships < Sinatra::Base
enable :sessions
set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, Proc.new { File.join(root, "..", "public") }

  get '/' do
    @name = session['player']
    erb :index
  end

  post '/play_game' do
    # the player
    @name = params[:name]
    @name << "player" if @name == ""
    session['player'] = @name
    # the board
    board = Board.new({size: 9, cell: Cell})
    board.fill_all_content(Water.new)
    @data = board.rows
    # the ship
    @coordinate = params[:coordinate]
    dinghy = Ship.new({size: 1})
    board.place(dinghy, @coordinate) if @coordinate
    erb :play_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
