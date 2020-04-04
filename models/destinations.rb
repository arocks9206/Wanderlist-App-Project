require_relative('../db/sql_runner')

class Destination

  def initialize(options)
    @continent = options('continent')
    @country = options('country')
    @cities = options('cities')
    @sights = options('sights')
    @id = options['id'].to_i if options['id']
  end


end
