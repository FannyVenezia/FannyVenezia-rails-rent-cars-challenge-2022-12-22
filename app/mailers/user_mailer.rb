class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  # def welcome(user)
  #   @greeting = "Hi"
  #   @user = user

  #   mail to: @user.email, subject: "Bonjour #{@user.first_name}"
  # end

  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Bienvenue sur RentMe!')
    # This will render a view in `app/views/user_mailer`!
  end
end
