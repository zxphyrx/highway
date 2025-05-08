class AddHoursToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :hours, :integer
  end
end
