class UserMailer < ActionMailer::Base

  def contact_us(name, email, subject, description)
    @from = "#{name} <#{email}>"
    @description = description
    mail(from: 'robot@dexcode.com', to: 'contact@dexcode.com', subject: subject, reply_to: @from)
  end
end
