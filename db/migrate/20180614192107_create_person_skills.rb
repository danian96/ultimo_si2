class CreatePersonSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :person_skills do |t|
      t.integer :nivel
      t.references :person, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
