class CreatePersonSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :person_skills do |t|
      t.integer :nivel
      t.references :person, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :skill, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
