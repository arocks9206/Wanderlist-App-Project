require_relative('../db/sql_runner')


class Destination

  attr_accessor(:city, :bucketlist, :visited)
  attr_reader(:id, :country_id)

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
    RETURNING id"
    values = [@city, @bucketlist, @visited, @country_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 # def update()
 #   sql = "UPDATE destinations SET
 #       city
 #     =
 #     $1
 #     WHERE id = $2"
 #     values = [@city, @id]
 #     SqlRunner.run(sql, values)
 # end
 #
 # def self.all()
 #  sql = "SELECT * FROM destinations"
 #  results = SqlRunner.run(sql)
 #  return results.map { |destination| Destination.new(destination) }
 # end
 #
 # def self.find( id )
 #    sql = "SELECT * FROM destinations
 #    WHERE id = $1"
 #    values = [id]
 #    results = SqlRunner.run(sql, values)
 #    return Destination.new(results.first)
 #  end
 #
 # def self.delete_all()
 #   sql = "DELETE FROM destinations"
 #   SqlRunner.run(sql)
 # end


end
