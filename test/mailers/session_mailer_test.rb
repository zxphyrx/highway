require "test_helper"

class SessionMailerTest < ActionMailer::TestCase
  test "login_code" do
    mail = SessionMailer.login_code(email: "to@example.org", login_code: "123456")
    assert_equal "Login code", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
