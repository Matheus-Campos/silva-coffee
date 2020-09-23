module Performable
  def inputs(*arguments)
    define_method(:initialize) do |*parameters|
      arguments.zip(parameters).each do |arg, param|
        instance_variable_set("@#{arg}", param)
      end
    end

    define_singleton_method(:perform) do |*parameters|
      new(*parameters).perform
    end
  end
end
