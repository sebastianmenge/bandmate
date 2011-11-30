class RemoveNotesFromConcert < ActiveRecord::Migration
  def up
    remove_column :concerts, :notes
  end

  def down
    add_column :concerts, :notes, :string
  end
end
