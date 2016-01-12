class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :category_id
      t.boolean :major

      t.timestamps null: false
    end
  end
end
