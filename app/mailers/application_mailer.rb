class ApplicationMailer < ActionMailer::Base
  # Default sender and receiver of mailer
  default to: "infoReceiver@gmail.com", from: "infoSender@gmail.com"
  layout 'mailer'
end
