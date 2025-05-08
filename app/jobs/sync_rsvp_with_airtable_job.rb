class SyncRsvpWithAirtableJob < ApplicationJob
  queue_as :default

  def perform(rsvp_id)
    rsvp = Rsvp.find(rsvp_id)
    rsvp.sync_with_airtable!
  end
end
