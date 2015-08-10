require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do
  @length = params.fetch('length')
  @width = params.fetch('width')
  @height = params.fetch('height')
  @distance = params.fetch('distance')
  @speed = params.fetch('speed')
  @package = Parcels.new()
  @volume = @package.volume
  @cost_to_ship = @package.cost_to_ship(@distance, @speed)

  erb(:result)
end
