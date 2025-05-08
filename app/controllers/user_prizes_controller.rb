class UserPrizesController < ApplicationController
  before_action :require_authentication
  
  def claim
    user_prize = current_user.user_prizes.find(params[:id])
    user_prize.claim!
    redirect_to prize_box_path, notice: "Prize claimed! Tracking: #{user_prize.tracking_number}"
  end
end