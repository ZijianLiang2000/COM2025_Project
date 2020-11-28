require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com","Matthew Casey", "1104777236", "1234567890", @message = "Hello, this is the message")

    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
  end
end
