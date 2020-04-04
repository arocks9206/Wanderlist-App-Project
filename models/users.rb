require_relative('../db/sql_runner')


class User

  attr_accessor(:full_name, :current_location)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @full_name = options['full_name']
    @current_location = options['current_location']
  end

  def save()
    sql = "INSERT INTO users
    (
      full_name,
      current_location
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@full_name, @current_location]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

end
