class RsvpsController < ApplicationController
  def create
    @rsvp = Rsvp.find_or_create_by_email!(rsvp_params[:email])
    if @rsvp.airtable_record_id.blank?
      @rsvp.update!(url_params: rsvp_params[:url_params])
    end
    redirect_to root_path, flash: { notice: "Thanks for your interest! We'll be in touch soon." }
  rescue ActiveRecord::RecordInvalid
    redirect_to root_path, flash: { alert: "Please enter a valid email address." }
  end

  private

  def rsvp_params
    params.permit(:email, :url_params, :authenticity_token, :commit)
  end
end
