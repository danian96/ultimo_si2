class CreateTranings < ActiveRecord::Migration[5.2]
  def change
    create_table :tranings do |t|
      t.string :title
      t.string :description
      t.date :init_date
      t.date :end_date

      t.timestamps
    end
  end
end
