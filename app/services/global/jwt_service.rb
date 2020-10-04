class Global::JwtService
  class << self
    def encode(payload = {})
      JWT.encode(payload, HMAC_KEY)
    end

    def decode(token)
      decoded_token = JWT.decode(token, HMAC_KEY)
      decoded_token.first
    rescue JWT::DecodeError
      raise AppError.new('Token inválido', :unauthorized)
    end
  end
end