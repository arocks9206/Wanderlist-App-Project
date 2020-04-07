require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/wanderlist_controller')



get '/' do
  erb(:index)
end
