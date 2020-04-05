require_relative('../db/sql_runner')

class Bucketlist

attr_reader (:id, :destination_id, :date_added)

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













end
