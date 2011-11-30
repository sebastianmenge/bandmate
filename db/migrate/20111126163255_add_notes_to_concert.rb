class AddNotesToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :notes, :text
  end
end
