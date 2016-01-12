class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.integer :layout_id

      t.timestamps null: false
    end
  end
end
