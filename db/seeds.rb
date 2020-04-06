require_relative('../models/users')
require_relative('../models/destinations')
require_relative('../models/bucket_lists')
require_relative('../models/been_there')

require("pry-byebug")

# User.delete_all()
# Destination.delete_all()
# Bucketlist.delete_all()
# Beenthere.delete_all()

user = User.new({"full_name" => "Alex Rocks", "current_location" => "Glasgow"})
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

destination2.city = "San Francisco"
destination2.update()

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

destination8 = Destination.new({
  "continent" => "Africa",
  "country" => "Morroco",
  "city" => "Marrakesh"
  })
destination8.save()

destination9 = Destination.new({
  "continent" => "Africa",
  "country" => "South Africa",
  "city" => "Cape Town"
  })
destination9.save()

destination10 = Destination.new({
  "continent" => "Asia",
  "country" => "India",
  "city" => "Kochi"
  })
destination10.save()

destination11 = Destination.new({
  "continent" => "Asia",
  "country" => "Japan",
  "city" => "Kyoto"
  })
destination11.save()

destination12 = Destination.new({"continent" => "Australia", "city" => "Melbourne"})
destination12.save()

destination13 = Destination.new({"continent" => "Australia", "city" => "Sydney"})
destination13.save()

destination14 = Destination.new({"continent" => "Antartica"})
destination14.save()

bucketlist1 = Bucketlist.new({"destination_id" => destination8.id, "date_added" => "2020-04-05"})
bucketlist1.save()

bucketlist2 = Bucketlist.new({"destination_id" => destination11.id, "date_added" => "2020-04-05"})
bucketlist2.save()

bucketlist3 = Bucketlist.new({"destination_id" => destination4.id, "date_added" => "2020-04-05"})
bucketlist3.save()

bucketlist4 = Bucketlist.new({"destination_id" => destination3.id, "date_added" => "2020-04-05"})
bucketlist4.save()

beenthere1 = Beenthere.new({"destination_id" => destination10.id, "date_completed" => "2014-12-20"})
beenthere1.save()

beenthere2 = Beenthere.new({"destination_id" => destination7.id, "date_completed" => "2017-07-01"})
beenthere2.save()

beenthere3 = Beenthere.new({"destination_id" => destination6.id, "date_completed" => "2017-06-15"})
beenthere3. save()


binding.pry
nil
