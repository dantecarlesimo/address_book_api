class ContactMailer < ActionMailer::Base
  default from: ENV['EMAIL_FROM_ADDRESS']

  def contact_email(email,subject,body)
    # @email_address = email.email_address
    # @subject = email.subject
    # @message = email.message
    mail(to: email, subject: subject, body: body)
  end

#to test in pry  1] pry(main)> ContactMailer.contact_email("dantecarlesimo@gmail.com","Test","Test Body").deliver

end
