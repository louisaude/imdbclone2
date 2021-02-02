class AddCommentToListEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :list_entries, :comment, :string
  end
end
