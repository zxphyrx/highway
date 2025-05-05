class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :kitted_guide
      t.string :github_repo
      t.string :proposed_tier
      t.string :proposed_tier_explanation
      t.boolean :group_project

      t.timestamps
    end
  end
end
