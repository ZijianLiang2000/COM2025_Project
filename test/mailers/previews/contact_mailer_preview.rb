# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def contact_email
        ContactMailer.contact_email("NBATest@Gmail.com","NBA TEST", "1104777236", "1234567890", @message = "Hello, this is a test message")
    end
end
