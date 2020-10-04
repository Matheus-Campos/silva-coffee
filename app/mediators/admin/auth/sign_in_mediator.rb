class Admin::Auth::SignInMediator
  extend Performable
  inputs :params

  def perform
    user = Admin::Auth::SignInService.perform(@params)
    token = Global::JwtService.encode(id: user.id)

    Global::ResponseService.ok(
      token: token,
      user: ActiveModelSerializers::SerializableResource.new(user).as_json
    )
  end
end