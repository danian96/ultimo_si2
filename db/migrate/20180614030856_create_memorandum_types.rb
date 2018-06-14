class CreateMemorandumTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :memorandum_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
