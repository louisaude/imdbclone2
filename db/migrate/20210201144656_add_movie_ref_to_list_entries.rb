class AddMovieRefToListEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :list_entries, :movie, null: false, foreign_key: true
  end
end
