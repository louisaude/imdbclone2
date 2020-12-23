class Movie < ApplicationRecord
  GENRE = ["Action", "Comedy", "Drama", "Fantasy", "Horror", "Mystery", "Romance", "Thriller", "Western", "Science Fiction"]

  # validates :title, uniqueness: true
end
