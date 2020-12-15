class ContactMailer < ApplicationMailer
    
    # Mailer's controller method to allocated each parameters to their corresponding variables
    def contact_email(email, name, nbaPassCode, telephone, message)
        @email = email
        @name = name
        @nbaPassCode = nbaPassCode
        @telephone = telephone
        @message = message

        # Mailer's cc would take in all parameters to be used to do validation in Mailer testing
        mail cc: "#{@email}+#{@name}+#{@nbaPassCode}+#{@telephone}+#{@message}"
    end
end
