class AddMovieRefToCasts < ActiveRecord::Migration[6.0]
  def change
    add_reference :casts, :movie, null: false, foreign_key: true
  end
end
