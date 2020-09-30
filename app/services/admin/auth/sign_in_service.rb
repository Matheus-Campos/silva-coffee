class Admin::Auth::SignInService
  extend Performable
  inputs :params

  def perform
    user = Admin::User.find_by!(email: @params[:email])
    raise AppError.new('E-mail ou senha inválidos', :unauthorized) unless user.authenticate(@params[:password])

    user
  end
end