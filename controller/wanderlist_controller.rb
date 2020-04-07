require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/destinations')
require_relative('../models/country')
also_reload( '../models/*')


get "/destinations" do
  @destinations = Destination.all
  erb(:"destinations/index")
end

get "/destinations/visited" do
  @destinations_visited = Destination.find_visited_destinations
  erb(:"destinations/index_visited")
end

get "/destinations/bucketlist" do
  @destinations_bucketlist = Destination.find_bucketlist_destinations
  erb(:"destinations/index_not_visited")
end

get "/destinations/new" do
  @countries = Country.all()
  erb(:"destinations/new")
end

post "/destinations" do
  new_destination = Destination.new(params)
  new_destination.save()
  redirect('/destinations')
end



get "/countries" do
  @countries = Country.all
  erb(:"countries/index")
end

get "/countries/new" do
  erb(:"countries/new")
end

post "/countries" do
  new_country = Country.new(params)
  new_country.save()
  redirect('/countries')
end
