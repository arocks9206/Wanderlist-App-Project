require_relative('../db/sql_runner')


class Destination

  attr_accessor(:city, :bucketlist, :visited, :country_id)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @city = options['city']
    @visited = options['visited']
    @country_id = options['country_id'].to_i
  end

  def save()
    sql = "INSERT INTO destinations
    (city,
    visited,
    country_id)
    VALUES
    ($1, $2, $3)
    RETURNING *"
    values = [@city, @visited, @country_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 def update()
   sql = "UPDATE destinations SET
      (
       city,
       visited,
       country_id
      )
     =
     ( $1, $2, $3 )
     WHERE id = $4"
     values = [@city, @visited, @country_id, @id]
     SqlRunner.run(sql, values)
 end

 def self.all()
  sql = "SELECT * FROM destinations"
  results = SqlRunner.run(sql)
  return results.map { |destination| Destination.new(destination) }
 end

 def self.find( id )
    sql = "SELECT * FROM destinations
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Country.new(results.first)
  end

 def self.delete_all()
   sql = "DELETE FROM destinations"
   SqlRunner.run(sql)
 end

 def mark_as_visited()
   sql = "UPDATE destinations SET visited = true WHERE id = $1"
   values = [@id]
   SqlRunner.run(sql, values)
 end

 def find_country()
   sql = "SELECT * FROM countries WHERE id = $1"
   values = [@country_id]
   result = SqlRunner.run(sql, values)
   return Country.new(result.first)
 end

 def self.find_visited_destinations()
   sql = "SELECT * FROM destinations WHERE visited = true"
   results = SqlRunner.run(sql)
   results.map {|destination| Destination.new(destination)}
 end

 def self.find_bucketlist_destinations()
   sql = "SELECT * FROM destinations WHERE visited = false"
   results = SqlRunner.run(sql)
   results.map{|destination| Destination.new(destination)}
 end


end
