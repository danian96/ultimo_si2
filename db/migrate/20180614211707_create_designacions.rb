class CreateDesignacions < ActiveRecord::Migration[5.2]
  def change
    create_table :designacions do |t|
      t.string :name
      t.references :user, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :departamento, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
