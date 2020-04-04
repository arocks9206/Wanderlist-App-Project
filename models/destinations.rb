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


end
