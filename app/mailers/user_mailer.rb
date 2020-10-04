class UserMailer < ApplicationMailer
  layout 'user_mailer'

  def confirm_identity
    @user = params[:user]

    mail(to: @user.email, subject: 'Confirme sua identidade!')
  end
end
