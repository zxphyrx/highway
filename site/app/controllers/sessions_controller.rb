class SessionsController < ApplicationController
  @@authTable = Airrecord.table(ENV['AIRTABLE_API_KEY'], ENV['AIRTABLE_BASE_ID'], 'auth')

  def create
    @user = User.find_by(email_address: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      @@authTable.create(
        "Email" => params[:email],
        "PIN" => "0000"
      )
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully'
  end
end
