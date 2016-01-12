class CreateSectionRows < ActiveRecord::Migration
  def change
    create_table :section_rows do |t|
      t.string :name
      t.integer :capacity
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
