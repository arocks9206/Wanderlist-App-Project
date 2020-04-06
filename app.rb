require( 'sinatra' )
require( 'sinatra/contrib/all' )
# require_relative()
# require_relative()
# require_relative()

get '/' do
  erb( :index )
end
