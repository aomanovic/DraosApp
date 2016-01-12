class CreateVenueLayouts < ActiveRecord::Migration
  def change
    create_table :venue_layouts do |t|
      t.integer :venue_id
      t.string :name
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
