class AddPublishToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :publish, :integer
  end
end
