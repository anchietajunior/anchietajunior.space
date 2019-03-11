class SessionsController < ApplicationController

  def new
  end

  def create
    result = Sessions::NewSessionService.call(params)
    if result.success?
      session[:user_id] = result.value.id
      redirect_to dashboard_posts_path, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
