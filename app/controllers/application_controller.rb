class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    unless current_user.present?
      flash[:danger] = "Please sign in to continue"
      redirect_to "/users/sign_in"
    end
  end
end
