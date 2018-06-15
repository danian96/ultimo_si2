class CreateAnuncios < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.string :estado
      t.string :descripcion
      t.references :departamento, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
