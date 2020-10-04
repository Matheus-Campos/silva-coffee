class Client::Auth::SignUpMediator
  extend Performable
  inputs :params

  def perform
    user = Client::Auth::SignUpService.perform(@params)

    Global::ResponseService.ok(
      ActiveModelSerializers::SerializableResource.new(user).as_json
    )
  end
end