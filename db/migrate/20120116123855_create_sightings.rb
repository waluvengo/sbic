class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :species_name
      t.string :state
      t.integer :abundance
      t.string :location
      t.string :grid_reference
      t.date :observation_date
      t.string :observer
      t.string :email
      t.integer :telephone
      t.text :comment

      t.timestamps
    end
  end
end
