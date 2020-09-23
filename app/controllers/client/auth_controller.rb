class Client::AuthController < ApplicationController
  def sign_in
    result = Client::Auth::SignInMediator.perform(sign_in_params)

    render json: result[:data], status: result[:status]
  end

  private

  def sign_in_params
    params.permit(:email, :password)
  end
end
