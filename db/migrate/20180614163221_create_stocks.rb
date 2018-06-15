class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :item_name
      t.integer :quantity
      t.date :buying_date
      t.references :stock_category, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
