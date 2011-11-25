class AddLinkcolorToBand < ActiveRecord::Migration
  def change
    add_column :bands, :linkcolor, :string
  end
end
