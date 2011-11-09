class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :band_id

      t.timestamps
    end
    add_index :posts, :band_id
  end
end
