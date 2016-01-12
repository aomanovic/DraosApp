class CreateTicketCategories < ActiveRecord::Migration
  def change
    create_table :ticket_categories do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
