class ContactMailer < ApplicationMailer
    
    def contact_email(email, name, nbaPassCode, telephone, message)
        @email = email
        @name = name
        @nbaPassCode = nbaPassCode
        @telephone = telephone
        @message = message

        mail cc: "#{@email}+#{@name}+#{@nbaPassCode}+#{@telephone}+#{@message}"
        # mail to: "infoReceiver@gmail.com"
        # mail from: 'infoSender@gmail.com'
        # mail email: @email
        # mail name: @name
        # mail nbaPassCode: @nbaPassCode
        # mail telephone: @telephone
        # mail message: @message
    end
end
