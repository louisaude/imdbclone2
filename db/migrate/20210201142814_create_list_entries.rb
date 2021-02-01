class CreateListEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :list_entries do |t|

      t.timestamps
    end
  end
end
