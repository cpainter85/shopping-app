class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def ensure_signed_in
    if !current_user
      redirect_to root_path, notice: 'Please log in to purchase a movie ticket'
    end
  end

  def current_user
    current_uer ||= User.find(session[:user_id]) if session[:user_id]
  end
end
