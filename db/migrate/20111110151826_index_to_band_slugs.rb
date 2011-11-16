class IndexToBandSlugs < ActiveRecord::Migration
  def up
    add_index :bands, :slug, :unique => true
  end

  def down
    remove_index :bands, :slug, :unique => true
  end
end
