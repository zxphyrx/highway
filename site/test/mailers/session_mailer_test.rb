require "test_helper"

class SessionMailerTest < ActionMailer::TestCase
  test "login_token" do
    mail = SessionMailer.login_token
    assert_equal "Login token", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
