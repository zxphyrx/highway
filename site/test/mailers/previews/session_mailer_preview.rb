# Preview all emails at http://localhost:3000/rails/mailers/session_mailer
class SessionMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/session_mailer/login_token
  def login_token
    SessionMailer.login_token
  end
end
