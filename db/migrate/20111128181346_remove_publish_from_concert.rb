class RemovePublishFromConcert < ActiveRecord::Migration
  def up
    remove_column :concerts, :publish
  end

  def down
    add_column :concerts, :publish, :integer
  end
end
