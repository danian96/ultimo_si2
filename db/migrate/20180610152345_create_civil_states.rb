class CreateCivilStates < ActiveRecord::Migration[5.2]
  def change
    create_table :civil_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
