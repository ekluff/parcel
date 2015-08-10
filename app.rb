require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @distance = params.fetch('distance').to_i
  @days = params.fetch('days').to_i
  @package = Parcels.new(@length, @width, @height, @weight)
  @volume = @package.volume
  @cost_to_ship = @package.cost_to_ship(@distance, @days)

  erb(:result)
end
