require_relative('../db/sql_runner')


class Country

  attr_accessor(:country, :id)


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @country = options['country']
  end

  def save()
    sql = "INSERT INTO countries
    (country)
    VALUES
    ($1)
    RETURNING id"
    values = [@country]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 # def update()
 #   sql = "UPDATE countries SET
 #       country
 #     =
 #     $1
 #     WHERE id = $2"
 #     values = [@city, @id]
 #     SqlRunner.run(sql, values)
 # end
 #
 # def self.all()
 #  sql = "SELECT * FROM countries"
 #  results = SqlRunner.run(sql)
 #  return results.map { |country| Country.new(country) }
 # end
 #
 # def self.find( id )
 #    sql = "SELECT * FROM countries
 #    WHERE id = $1"
 #    values = [id]
 #    results = SqlRunner.run(sql, values)
 #    return Country.new(results.first)
 #  end
 #
 # def self.delete_all()
 #   sql = "DELETE FROM countries"
 #   SqlRunner.run(sql)
 # end


end
