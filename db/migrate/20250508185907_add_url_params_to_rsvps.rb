class AddUrlParamsToRsvps < ActiveRecord::Migration[8.0]
  def change
    add_column :rsvps, :url_params, :string
  end
end
