class AddBgcolorToBand < ActiveRecord::Migration
  def change
    add_column :bands, :bgcolor, :string
  end
end
