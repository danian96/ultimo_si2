class CreateDesignacions < ActiveRecord::Migration[5.2]
  def change
    create_table :designacions do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :departamento, foreign_key: true

      t.timestamps
    end
  end
end
