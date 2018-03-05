class ApplicationMailer < ActionMailer::Base
  default from: "Getty <#{ENV['sender_mail_username']}>"
  layout 'mailer'
end
