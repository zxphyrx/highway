class Rsvp < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :enqueue_airtable_sync

  def self.find_or_create_by_email!(email)
    find_or_create_by!(email: email.downcase.strip)
  end

  def sync_with_airtable!
    uri = URI("https://api.airtable.com/v0/appuDQSHCdCHyOrxw/tblhGTc3WX9nYzU18")

    request = Net::HTTP::Patch.new(uri)
    request["Authorization"] = "Bearer #{ENV.fetch("AIRTABLE_API_KEY")}"
    request["Content-Type"] = "application/json"
    request.body = {
      performUpsert: {
        fieldsToMergeOn: [ "email" ]
      },
      records: [
        {
          fields: {
            email: email,
            url_params: url_params
          }
        }
      ]
    }.to_json

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    puts response.body

    self.airtable_record_id = JSON.parse(response.body).dig("records", 0, "id")
    save!
  end

  private

  def enqueue_airtable_sync
    SyncRsvpWithAirtableJob.perform_later(id)
  end
end
