class AddBandToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :band_id, :integer
  end
end
