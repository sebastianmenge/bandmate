class AddTelephoneToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :telephone, :string
  end
end
