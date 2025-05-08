class CreateUserPrizes < ActiveRecord::Migration[8.0]
  def change
    create_table :user_prizes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prize, null: false, foreign_key: true
      t.boolean :claimed
      t.datetime :claimed_at
      t.string :tracking_number

      t.timestamps
    end
  end
end
