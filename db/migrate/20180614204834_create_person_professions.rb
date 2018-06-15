class CreatePersonProfessions < ActiveRecord::Migration[5.2]
  def change
    create_table :person_professions do |t|
      t.references :person, foreign_key: true
      t.references :profession, foreign_key: true
      t.references :grade_academic, foreign_key: true

      t.timestamps
    end
  end
end
