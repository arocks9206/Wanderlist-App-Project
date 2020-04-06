require_relative('../db/sql_runner')


class User

  attr_reader(:full_name, :current_location, :id)


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

 # def update()
 #   sql = "UPDATE destinations SET
 #       city
 #     =
 #     $1
 #     WHERE id = $2"
 #     values = [@current_location, @id]
 #     SqlRunner.run(sql, values)
 # end
 #
 # def self.all()
 #  sql = "SELECT * FROM users"
 #  results = SqlRunner.run( sql )
 #  return results.map { |user| User.new(user) }
 # end
 #
 # def self.find(id)
 #    sql = "SELECT * FROM users
 #    WHERE id = $1"
 #    values = [id]
 #    results = SqlRunner.run(sql, values)
 #    return User.new(results.first)
 #  end
 #
 def delete_all()
   sql = "DELETE FROM users"
   SqlRunner.run(sql)
 end



end
