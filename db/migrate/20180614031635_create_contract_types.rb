class CreateContractTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :contract_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
