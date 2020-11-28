class ContactMailer < ApplicationMailer
    
    def contact_email(email, name, nbaPassCode, telephone, message)
        @email = email
        @name = name
        @nbaPassCode = nbaPassCode
        @telephone = telephone
        @message = message

        mail cc: @email
    end
end
