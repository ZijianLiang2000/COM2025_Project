require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user1 = users(:one)
  end

  # This tests the mailer successfully delivers and returns all key information included in Mail.cc 
  test "should return contact email information" do
    email1 = ContactMailer.contact_email(@user1.email,"NBA TEST", "1104777236", "1234567890", @message = "Hello, this is a test message")

    assert_emails 1 do
      email1.deliver_now
    end
    
    assert_equal ['infoReceiver@gmail.com'], email1.to
    assert_equal ['infoSender@gmail.com'], email1.from
    assert_equal "#{@user1.email}+NBA TEST+1104777236+1234567890+Hello, this is a test message", email1.cc
  end
end
