class SessionMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  include Rails.application.routes.url_helpers
  #   en.session_mailer.login_token.subject
  def login_code(email:, login_code:) 
    @greeting = "Hi"
    @login_code = login_code
    @signin_link = exchange_code_url(code: @login_code)
    # debugger

    mail to: email
  end
end
