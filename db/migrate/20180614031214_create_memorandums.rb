class CreateMemorandums < ActiveRecord::Migration[5.2]
  def change
    create_table :memorandums do |t|
      t.string :title
      t.text :description
      t.references :memorandum_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
