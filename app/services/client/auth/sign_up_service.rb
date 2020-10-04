class Client::Auth::SignUpService
  extend Performable
  inputs :params

  def perform
    user = Client::User.create!(@params)

    UserMailer.with(user: user).confirm_identity.deliver_later

    user
  end
end