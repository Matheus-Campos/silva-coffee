class Global::ResponseService
  class << self
    def ok(data)
      { status: :ok, data: data }
    end
  end
end
