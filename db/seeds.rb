require_relative('../models/users')
require_relative('../models/destinations')

require("pry-byebug")

user = User.new({
  "full_name" => "Alex Rocks",
  "current_location" => "Glasgow"
  })
user.save()

destination1 = Destination.new({
  "continent" => "North America",
  "country" => "Canada",
  "city" => "Toronto"
  })
destination1.save()

destination2 = Destination.new({
  "continent" => "North America",
  "country" => "United States",
  "city" => "New York"
  })
destination2.save()

destination3 = Destination.new({
  "continent" => "North America",
  "country" => "Mexico",
  "city" => "Mexico City"
  })
destination3.save()

destination4 = Destination.new({
  "continent" => "South America",
  "country" => "Chile",
  "city" => "Santiago"
  })
destination4.save()

destination5 = Destination.new({
  "continent" => "South America",
  "country" => "Brazil",
  "city" => "Rio de Janeiro"
  })
destination5.save()

destination6 = Destination.new({
  "continent" => "Europe",
  "country" => "Spain",
  "city" => "Barcelona"
  })
destination6.save()

destination7 = Destination.new({
  "continent" => "Europe",
  "country" => "Germany",
  "city" => "Berlin"
  })
destination7.save()





























binding.pry
nil
