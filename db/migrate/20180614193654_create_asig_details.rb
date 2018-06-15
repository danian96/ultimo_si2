class CreateAsigDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :asig_details do |t|
      t.integer :quantity
      t.references :stock, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :asig_stock, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
