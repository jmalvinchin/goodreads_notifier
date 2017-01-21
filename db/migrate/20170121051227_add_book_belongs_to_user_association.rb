class AddBookBelongsToUserAssociation < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :user_id, :integer, index: true
  end
end
