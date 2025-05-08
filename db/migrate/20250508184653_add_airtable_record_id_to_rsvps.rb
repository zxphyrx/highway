class AddAirtableRecordIdToRsvps < ActiveRecord::Migration[8.0]
  def change
    add_column :rsvps, :airtable_record_id, :string
  end
end
