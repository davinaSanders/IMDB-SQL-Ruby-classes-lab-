require_relative("../models/star.rb")
require_relative("../models/movie.rb")
require_relative("../models/casting.rb")
require("pry")

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({
  "title" => "Avengers",
  "genre" => "Fantasy",
  "rating" => 9
  })

  movie1.save()

movie2 = Movie.new({
  "title" => "Goodfellas",
  "genre" => "Crime",
  "rating" => 8
  })
movie2.save()
movie3 = Movie.new({
  "title" => "Shrek",
  "genre" => "Adventure",
  "rating" => 7
  })

movie3.save()
star1 = Star.new({
  "first_name" => "Chris",
  "last_name" =>  "Pratt"
  })

star1.save()

star2 = Star.new({
  "first_name" => "Robert",
  "last_name" =>  "De Niro"
  })
star2.save()

star3 = Star.new({
  "first_name" => "Mike",
  "last_name" =>  "Myers"
    })
star3.save()

casting1 = Casting.new({
  "movie_id" => movie1.id,
  "star_id" => star1.id
  })
casting1.save()
  casting2 = Casting.new({
  "movie_id" => movie2.id,
  "star_id" => star2.id
  })
casting2.save()
  casting3 = Casting.new({
  "movie_id" => movie3.id,
  "star_id" => star3.id
  })

casting3.save()


binding.pry
nil
