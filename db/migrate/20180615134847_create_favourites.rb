class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.string :name
      t.string :actionlink
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
