class CreatePriceCategories < ActiveRecord::Migration
  def change
    create_table :price_categories do |t|
      t.integer :event_id
      t.integer :venue_id
      t.integer :section_id
      t.integer :category_id
      t.decimal :price, precision: 15, scale: 2

      t.timestamps null: false
    end
  end
end
