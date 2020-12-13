class ApplicationMailer < ActionMailer::Base
  default to: "infoReceiver@gmail.com", from: "infoSender@gmail.com"
  layout 'mailer'
end
