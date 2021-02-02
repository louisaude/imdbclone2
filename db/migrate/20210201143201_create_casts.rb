class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|

      t.timestamps
    end
  end
end
