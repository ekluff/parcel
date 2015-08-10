require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do



  erb(:result)
end
