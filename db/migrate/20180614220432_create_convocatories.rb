class CreateConvocatories < ActiveRecord::Migration[5.2]
  def change
    create_table :convocatories do |t|
      t.string :titulo
      t.string :descripcion
      t.date :fecha_ini
      t.date :fecha_fin
      t.integer :cantidad_vacantes
      t.string :estado
      t.references :detalle_aplicacion, foreign_key: true
      t.references :designacion, foreign_key: true

      t.timestamps
    end
  end
end
