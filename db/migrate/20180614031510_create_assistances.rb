class CreateAssistances < ActiveRecord::Migration[5.2]
  def change
    create_table :assistances do |t|
      t.string :day
      t.date :date_of_assistance
      t.time :init_time
      t.time :final_time
      t.references :people, foreign_key: true

      t.timestamps
    end
  end
end
