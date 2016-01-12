class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :event_id
      t.integer :venue_id
      t.text :showtime
      t.integer :layout_id

      t.timestamps null: false
    end
  end
end
