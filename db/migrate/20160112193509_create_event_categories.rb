class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
