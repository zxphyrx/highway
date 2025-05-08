class CreateRsvps < ActiveRecord::Migration[8.0]
  def change
    create_table :rsvps do |t|
      t.string :email

      t.timestamps
    end
    add_index :rsvps, :email, unique: true
  end
end
