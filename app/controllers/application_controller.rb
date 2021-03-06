class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_user(user)
    session[:user_id] = user.id
  end

  helper_method :current_user
end
