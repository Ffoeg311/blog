class UserAcceptanceMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def accept_user_request_email
    @url  = 'http://example.com/login'
    mail(to: 'email_from_config@dummy.foo', subject: 'A new user requires approval')
  end
end
