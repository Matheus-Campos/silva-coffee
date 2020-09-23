class ApplicationController < ActionController::API
  rescue_from AppError, with: :handle_app_error
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  private

  def handle_app_error(error)
    error_details = { code: 'APP_ERROR', message: error.message }
    render json: error_details, status: error.status
  end

  def handle_record_not_found
    error_details = { code: 'NOT_FOUND', message: 'O objeto não pode ser encontrado' }
    render json: error_details, status: :not_found
  end
end
