class CreateMemorandums < ActiveRecord::Migration[5.2]
  def change
    create_table :memorandums do |t|
      t.string :title
      t.text :description
      t.references :memorandum_type ,foreign_key: {on_delete: :cascade, on_update: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
