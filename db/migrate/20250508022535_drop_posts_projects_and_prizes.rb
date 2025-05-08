class DropPostsProjectsAndPrizes < ActiveRecord::Migration[8.0]
  def up
    drop_table :posts if table_exists?(:posts)
    drop_table :projects if table_exists?(:projects)
    drop_table :prizes if table_exists?(:prizes)
    drop_table :user_prizes if table_exists?(:user_prizes)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
