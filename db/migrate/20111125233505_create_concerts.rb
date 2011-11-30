class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :location
      t.string :city
      t.string :country
      t.date :date
      t.string :support
      t.string :notes

      t.timestamps
    end
  end
end
