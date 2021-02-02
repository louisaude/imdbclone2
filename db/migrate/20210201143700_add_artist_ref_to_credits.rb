class AddArtistRefToCredits < ActiveRecord::Migration[6.0]
  def change
    add_reference :credits, :artist, null: false, foreign_key: true
  end
end
