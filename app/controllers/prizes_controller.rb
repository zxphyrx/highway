# app/controllers/prizes_controller.rb
class PrizesController < ApplicationController
  before_action :require_authentication

  def add_to_box
    prize = Prize.find(params[:id])
    current_user.user_prizes.create!(prize: prize)
    redirect_to prizes_path, notice: "Added to your prize box!"
  end
end