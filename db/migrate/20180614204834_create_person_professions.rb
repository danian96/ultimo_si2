class CreatePersonProfessions < ActiveRecord::Migration[5.2]
  def change
    create_table :person_professions do |t|
      t.references :person, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :profession, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :grade_academic, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
