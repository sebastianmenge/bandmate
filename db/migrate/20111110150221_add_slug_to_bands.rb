class AddSlugToBands < ActiveRecord::Migration
  def change
    add_column :bands, :slug, :string
  end
end
