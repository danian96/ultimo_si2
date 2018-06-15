class CreateEvaluacionPsicologicas < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluacion_psicologicas do |t|
      t.string :observaciones
      t.string :recomendaciones

      t.timestamps
    end
  end
end
