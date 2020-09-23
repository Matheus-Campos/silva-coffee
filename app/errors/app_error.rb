class AppError < StandardError
  attr_reader :status

  def initialize(msg = 'Erro desconhecido', status = :internal_server_error)
    @status = status
    super(msg)
  end
end