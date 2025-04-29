class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :login_code
      t.datetime :login_code_expires_at

      t.timestamps
    end
  end
end
