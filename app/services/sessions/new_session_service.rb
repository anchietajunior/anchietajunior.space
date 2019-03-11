module Sessions
  class NewSessionService < ApplicationService

    def initialize(params)
      @params = params
    end

    def call
      Result.new(true, login!, nil)
    rescue StandardError => e
      Result.new(false, nil, e.message)
    end

    private

    attr_accessor :params

    def login!
      user.authenticate(params[:password])
    end

    def user
      @user ||= User.find_by(email: params[:email])
    end
  end
end
