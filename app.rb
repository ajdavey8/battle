require 'sinatra/base'
require './lib/player'
require './lib/hp'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $hp = Hp.new
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @hp1 = Hp.new
    @hp2 = Hp.new.reduce_hp
    erb :attack
  end
  run! if app_file == $PROGRAM_NAME
end
