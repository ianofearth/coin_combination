require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combos')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/final_combo') do
  coin_amount = params.fetch('coin_amount')
  @final_combo = (coin_amount.to_i).coin_combos()

  erb(:final_combo)
end
