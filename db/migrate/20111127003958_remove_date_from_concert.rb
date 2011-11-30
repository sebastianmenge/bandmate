class RemoveDateFromConcert < ActiveRecord::Migration
  def up
    remove_column :concerts, :date
  end

  def down
    add_column :concerts, :date, :date
  end
end
