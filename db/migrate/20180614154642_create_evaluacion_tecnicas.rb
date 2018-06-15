class CreateEvaluacionTecnicas < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluacion_tecnicas do |t|
      t.string :observacion
      t.string :calificacion

      t.timestamps
    end
  end
end
