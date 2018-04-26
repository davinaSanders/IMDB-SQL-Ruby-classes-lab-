require_relative("../db/sql_runner")

class Movie

  attr_reader :id, :title, :genre, :rating
  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @rating = options["rating"].to_i
  end

  def self.all()
    sql = "SELECT * FROM movies"
    movie_hashes = SqlRunner.run(sql)
    movies = movie_hashes.map { |movie| Movie.new(movie) }
    return movies
  end

  def update()
    sql = "UPDATE movies SET (
    title,
    genre,
    rating
    ) = ($1, $2, $3)
    WHERE id = $4"
    values = [@title, @genre, @rating, @id]
    SqlRunner.run(sql, values)
  end

  def save()
    sql = "INSERT INTO movies
    (title, genre, rating)
    VALUES
    ($1, $2, $3)
    RETURNING id"
    values = [@title, @genre, @rating]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM movies"
    SqlRunner.run(sql)
  end

end
