require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/destinations')
require_relative('..models/countries')
also_reload( '../models/*')

get "/destinations" do
  @destinations = Destination.all
  erb(:"destinations/index")
end

get "/countries" do
  @countries = Country.all
  erb(:"countries/index")
end
