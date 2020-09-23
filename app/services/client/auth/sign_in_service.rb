class Client::Auth::SignInService
  extend Performable
  inputs :params

  def perform
    user = Client::User.find_by!(email: @params[:email])

    raise AppError.new('E-mail ou senha inválidos', :unauthorized) unless user.authenticate(@params[:password])
    raise AppError.new('Usuário suspenso', :unauthorized) unless user.active

    user
  end
end
