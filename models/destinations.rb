require_relative('../db/sql_runner')


class Destination

  attr_accessor(:continent, :country, :city)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @continent = options['continent']
    @country = options['country']
    @city = options['city']
  end

  def save()
    sql = "INSERT INTO destinations
    (
      continent,
      country,
      city
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@continent, @country, @city]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 def update()
   sql = "UPDATE destinations SET
       city
     =
     $1
     WHERE id = $2"
     values = [@city, @id]
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
    return Destination.new(results.first)
  end

 def delete_all()
   sql = "DELETE FROM destinations"
   SqlRunner.run(sql)
 end


end
