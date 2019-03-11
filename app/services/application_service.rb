class ApplicationService
  def self.call(*args)
    new(*args).call
  end

  Result = Struct.new(:success?, :value, :error)
end
