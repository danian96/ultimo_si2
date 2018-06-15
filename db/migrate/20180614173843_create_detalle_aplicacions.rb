class CreateDetalleAplicacions < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_aplicacions do |t|
      t.string :estado
      t.date :fecha
      t.references :people, foreign_key: true
      t.references :evaluacion_psicologica, foreign_key: true
      t.references :evaluacion_tecnica, foreign_key: true

      t.timestamps
    end
  end
end
