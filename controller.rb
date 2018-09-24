require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/game')
also_reload('./models/*')

get '/:player1_hand/:player2_hand' do
  game = Game.new(params[:player1_hand], params[:player2_hand])
  # MVP
  # game_result = game.calculate_results()
  # return "#{game_result}"

  # Extensions
  @game_result = game.calculate_results()
  erb(:result)
end

get '/' do
  erb(:welcome)
end
