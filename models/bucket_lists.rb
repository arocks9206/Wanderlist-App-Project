require_relative('../db/sql_runner')

class Bucketlist

attr_reader (:destination_id, :date_added, :id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @destination_id = options['destination_id'].to_i
    @date_added = options['date_added']
  end

  def save()
    sql = "INSERT INTO bucketlists
    (
      destination_id,
      date_added
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@destination_id, @date_added]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
 end

 def update()
   sql = "UPDATE bucketlists SET
       country
     =
     $1
     WHERE id = $2"
     values = [@destination_id, @id]
     SqlRunner.run(sql, values)
 end

 def self.all()
    sql = "SELECT * FROM bucketlists"
    results = SqlRunner.run( sql )
    return results.map {|bucketlist| Bucketlist.new(bucketlist)}
 end

 def self.find(id)
    sql = "SELECT * FROM bucketlists
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Bucketlist.new(results.first)
  end

 def delete_all()
   sql = "DELETE FROM bucketlists"
   SqlRunner.run(sql)
 end













end
