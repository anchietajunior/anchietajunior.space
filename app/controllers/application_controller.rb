class ApplicationController < ActionController::Base

  private

  def authorize
    redirect_to login_path, alert: "Not authorized" if current_user.nil?
  end

  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

end
