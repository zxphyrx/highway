class AdminController < ApplicationController
  before_action :require_authentication
  before_action :authenticate_user

  def dashboard
    @users = User.all
    @posts = Post.all
    @projects = Project.all
  end

  private

  def authenticate_user
    unless current_user && current_user.admin?
      redirect_to root_path
    end
  end
end
