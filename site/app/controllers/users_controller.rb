class UsersController < ApplicationController

  before_action :set_user, only: %i[ show ]
  before_action :require_authentication, only: [:show]


  # def index
  #   @users = User.all
  # end

  def show
    @user = User.find(params[:id])
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = user.new(user_params)
  #   if @user.save
  #     redirect_to @user
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  # end

  # def update
  #   if @user.update(user_params)
  #     redirect_to @user
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  private 

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.expect(user: [ :email ])
    end

end
