class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :small_image_url
      t.string :large_image_url
      t.string :goodreads_link
      t.datetime :publication_date
      t.float :average_rating
      t.text :description
      t.integer :author_id, index: true
      t.timestamps
    end
  end
end
