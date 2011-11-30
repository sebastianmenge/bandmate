class AddDateToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :eventdate, :datetime
  end
end
