class LandingController < ApplicationController
  def index
    @authenticated = current_user.present?
  end
end 