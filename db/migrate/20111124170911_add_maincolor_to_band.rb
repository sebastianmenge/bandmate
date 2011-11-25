class AddMaincolorToBand < ActiveRecord::Migration
  def change
    add_column :bands, :maincolor, :string
  end
end
