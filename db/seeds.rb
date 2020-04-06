require_relative('../models/users')
require_relative('../models/destinations')
require_relative('../models/country')


require("pry-byebug")

User.delete_all()
Destination.delete_all()
Country.delete_all()


user = User.new({"full_name" => "Alex Rocks", "current_location" => "Glasgow"})
user.save()

destination1 = Destination.new({"city" => "Toronto"})
destination1.save()

destination2 = Destination.new({"city" => "New York"})
destination2.save()

destination3 = Destination.new({"city" => "Mexico City"})
destination3.save()

destination4 = Destination.new({"city" => "Santiago"})
destination4.save()

destination5 = Destination.new({"city" => "Rio de Janeiro"})
destination5.save()

destination6 = Destination.new({"city" => "Barcelona"})
destination6.save()

destination7 = Destination.new({"city" => "Berlin"})
destination7.save()

destination8 = Destination.new({"city" => "Marrakesh"})
destination8.save()

destination9 = Destination.new({"city" => "Cape Town"})
destination9.save()

destination10 = Destination.new({"city" => "Agra"})
destination10.save()

destination11 = Destination.new({"city" => "Kyoto"})
destination11.save()

destination12 = Destination.new({"city" => "Melbourne"})
destination12.save()


country1 = Country.new({"country" => "Canada"})
country1.save()

country2 = Country.new({"country" => "United States"})
country2.save()

country3 = Country.new({"country" => "Mexico"})
country3.save()

country4 = Country.new({"country" => "Chile"})
country4.save()

country5 = Country.new({"country" => "Brazil"})
country5.save()

country6 = Country.new({"country" => "Spain"})
country6.save()

country7 = Country.new({"country" => "Germany"})
country7.save()

country8 = Country.new({"country" => "Morroco"})
country8.save()

country9 = Country.new({"country" => "South Africa"})
country9.save()

country10 = Country.new({"country" => "India"})
country10.save()

country11 = Country.new({"country" => "Japan"})
country11.save()

country12 = Country.new({"country" => "Australia"})
country12.save()

binding.pry
nil
