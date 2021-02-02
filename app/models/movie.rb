class Movie < ApplicationRecord
  GENRE = ["Action", "Comedy", "Drama", "Fantasy", "Horror", "Mystery", "Romance", "Thriller", "Western", "Science Fiction"]
  has_many :list_entries, dependent: :destroy
  validates :title, uniqueness: true
end
