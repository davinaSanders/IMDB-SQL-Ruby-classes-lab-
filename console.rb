require_relative("star.rb")
require_relative("movie.rb")
require_relative("casting.rb")
require("pry")

movie1 = Movie.new({
  "title" => "Avengers",
  "genre" => "Fantasy",
  "rating" => 9
  })

movie2 = Movie.new({
  "title" => "Goodfellas",
  "genre" => "Crime",
  "rating" => 8
  })

movie3 = Movie.new({
  "title" => "Shrek",
  "genre" => "Adventure",
  "rating" => 7
  })


star1 = Star.new({
  "first_name" => "Chris",
  "last_name" =>  "Pratt"
  })

star2 = Star.new({
  "first_name" => "Robert",
  "last_name" =>  "De Niro"
  })

star3 = Star.new({
  "first_name" => "Mike",
  "last_name" =>  "Myers"
    })




binding.pry
nil
