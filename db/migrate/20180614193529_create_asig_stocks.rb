class CreateAsigStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :asig_stocks do |t|
      t.date :asig_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
