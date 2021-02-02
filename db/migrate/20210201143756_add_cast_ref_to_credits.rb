class AddCastRefToCredits < ActiveRecord::Migration[6.0]
  def change
    add_reference :credits, :cast, null: false, foreign_key: true
  end
end
