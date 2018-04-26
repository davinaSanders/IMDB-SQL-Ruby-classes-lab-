require_relative("../db/sql_runner")


class Casting
  attr_reader :id, :movie_id, :star_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @movie_id = options["movie_id"].to_i
    @star_id = options["star_id"].to_i
  end

  def save()
    sql = "INSERT INTO castings
    (movie_id, star_id)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@movie_id, @star_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM castings"
    casting_hashes = SqlRunner.run(sql)
    castings = casting_hashes.map {|casting| Casting.new(casting)}
    return castings
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    SqlRunner.run(sql)
  end

end
