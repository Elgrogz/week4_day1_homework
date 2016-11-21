require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game.rb')
require('json')

get '/play/:choice1/:choice2' do
  @choice1 = params[:choice1]
  @choice2 = params[:choice2]
  game1 = Game.new(@choice1, @choice2)
  @result = game1.play
  erb(:result)
end
