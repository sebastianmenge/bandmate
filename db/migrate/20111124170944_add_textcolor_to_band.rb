class AddTextcolorToBand < ActiveRecord::Migration
  def change
    add_column :bands, :textcolor, :string
  end
end
