class Client::Auth::SignInMediator
  extend Performable
  inputs :params

  def perform
    user = Client::Auth::SignInService.perform(@params)
    token = Global::JwtService.encode(user)

    Global::ResponseService.ok(
      token: token,
      user: ActiveModelSerializers::SerializableResource.new(user).as_json
    )
  end
end
