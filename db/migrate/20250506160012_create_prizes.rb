class CreatePrizes < ActiveRecord::Migration[8.0]
  def change
    create_table :prizes do |t|
      t.string :name
      t.string :sku
      t.boolean :claimable

      t.timestamps
    end
  end
end
