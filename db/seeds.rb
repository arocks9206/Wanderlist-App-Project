require_relative('../models/destinations')
require_relative('../models/country')

require("pry-byebug")

Destination.delete_all()
Country.delete_all()

destination1 = Destination.new({
  "city" => "Toronto",
  "bucketlist" => false,
  "visited" => true,
  "country_id" => country1.id
  })
destination1.save()

destination2 = Destination.new({
  "city" => "New York",
  "bucketlist" => false,
  "visited" => true,
  "country_id" => country2.id
  })
destination2.save()

destination3 = Destination.new({
  "city" => "Mexico City",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country3.id
  })
destination3.save()

destination4 = Destination.new({
  "city" => "Santiago",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country4.id
  })
destination4.save()

destination5 = Destination.new({
  "city" => "Rio de Janeiro",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country5.id
  })
destination5.save()

destination6 = Destination.new({
  "city" => "Barcelona",
  "bucketlist" => false,
  "visited" => true,
  "country_id" => country6.id
  })
destination6.save()

destination7 = Destination.new({
  "city" => "Berlin",
  "bucketlist" => false,
  "visited" => true,
  "country_id" => country7.id
  })
destination7.save()

destination8 = Destination.new({
  "city" => "Marrakesh",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country8.id
  })
destination8.save()

destination9 = Destination.new({
  "city" => "Cape Town",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country9.id
  })
destination9.save()

destination10 = Destination.new({
  "city" => "Agra",
  "bucketlist" => false,
  "visited" => true,
  "country_id" => country10.id
  })
destination10.save()

destination11 = Destination.new({
  "city" => "Kyoto",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country11.id
  })
destination11.save()
destination11.city = "Tokyo"
destination11.update()

destination12 = Destination.new({
  "city" => "Melbourne",
  "bucketlist" => true,
  "visited" => false,
  "country_id" => country12.id
  })
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
