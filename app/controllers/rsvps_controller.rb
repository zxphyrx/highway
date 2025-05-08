class RsvpsController < ApplicationController
  def create
    @rsvp = Rsvp.find_or_create_by_email!(rsvp_params[:email])
    flash[:success] = "Thanks for your interest! We'll be in touch soon."
    redirect_to root_path
  rescue ActiveRecord::RecordInvalid
    flash[:error] = "Please enter a valid email address."
    redirect_to root_path
  end

  private

  def rsvp_params
    params.permit(:email)
  end
end
