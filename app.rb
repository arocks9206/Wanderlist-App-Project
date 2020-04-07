require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controller/wanderlist_controller')



get '/' do
  erb(:index)
end
