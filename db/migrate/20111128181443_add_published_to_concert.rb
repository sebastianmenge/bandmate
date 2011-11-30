class AddPublishedToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :publish, :boolean
  end
end
