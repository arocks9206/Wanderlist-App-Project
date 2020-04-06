require_relative('../db/sql_runner')

class Beenthere

  attr_reader (:destination_id)
  attr_accessor (:date_completed)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @destination_id = options['destination_id'].to_i
    @date_completed = options['date_added']
  end

  def save()
    sql = "INSERT INTO beentheres
    (
      destination_id,
      date_completed
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@destination_id, @date_completed]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 def update()
   sql = "UPDATE beentheres SET
       country
     =
     $1
     WHERE id = $2"
     values = [@destination_id, @id]
     SqlRunner.run(sql, values)
 end

 def self.all()
    sql = "SELECT * FROM beentheres"
    results = SqlRunner.run( sql )
    return results.map {|beenthere| Beenthere.new(beenthere)}
 end

 def self.find(id)
    sql = "SELECT * FROM beentheres
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Beenthere.new(results.first)
  end

 def delete_all()
   sql = "DELETE FROM beentheres"
   SqlRunner.run(sql)
 end

end
