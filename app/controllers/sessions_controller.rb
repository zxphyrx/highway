class SessionsController < ApplicationController
  def new 
    puts "😺"
  end

  def create
    email = params[:email].downcase
    user = User.find_or_create_by(email: email)
    user.update!(login_code: "%06d" % rand(6 ** 6), login_code_expires_at: 1.hour.from_now)
    SessionMailer.login_code(email: email, login_code: user.login_code).deliver_now

  end


  def exchange_code
    user = User.find_by(login_code: params[:code], login_code_expires_at: Time.current..)
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "congrats"
      @authenticated = true
    else # no user
      redirect_to root_path, alert: "no"
    end
    
  end
end