class CreateTraningUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :traning_users do |t|
      t.integer :status
      t.references :traning, foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
