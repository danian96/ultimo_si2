class CreateGradeAcademics < ActiveRecord::Migration[5.2]
  def change
    create_table :grade_academics do |t|
      t.string :name
      t.string :institution

      t.timestamps
    end
  end
end
