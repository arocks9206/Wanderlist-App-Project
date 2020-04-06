require_relative('../db/sql_runner')


class Destination

  attr_accessor(:city, :bucketlist, :visited, :country_id)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @city = options['city']
    @bucketlist = options['bucketlist']
    @visited = options['visited']
    @country_id = options['country_id'].to_i
  end

  def save()
    sql = "INSERT INTO destinations
    (city,
    bucketlist,
    visited,
    country_id)
    VALUES
    ($1, $2, $3, $4)
    RETURNING *"
    values = [@city, @bucketlist, @visited, @country_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 def update()
   sql = "UPDATE destinations SET
       city,
       bucketlist,
       visited,
       country_id
     =
     $1, $2, $3, $4
     WHERE id = $5"
     values = [@city, @bucketlist, @visited, @country_id, @id]
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


end
