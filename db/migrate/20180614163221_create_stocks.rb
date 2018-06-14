class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :item_name
      t.integer :quantity
      t.date :buying_date
      t.references :stock_category, foreign_key: true

      t.timestamps
    end
  end
end
