class AddAdressToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :adress, :text
  end
end
