class ApplicationMailer < ActionMailer::Base
  default from: 'CATS@example.com'
  layout 'mailer'

  def welcome_emal(user)
    @user = user
    @url = 'http://localhost:3000/session/new'
    mail(to: @user.username, subject: "WELCOME!")
  end
end
