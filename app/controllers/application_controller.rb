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

  def webmaster
    @webmaster ||= Office.find_by_title("Webmaster").current_officer
  end

  def restrict_to *groups
    permitted = (webmaster == current_user) || current_user_in_groups?(groups)

    unless permitted
      flash[:danger] = "You do not have sufficient permissions to view this content."
      redirect_to "/announcements"
    end
  end

  def current_user_in_groups?(groups)
    aliases, offices = groups.partition {|g| g.is_a? Symbol }
    permitted_office_names = offices + aliases.flat_map {|a| Office::ALIASES.fetch(a, []) }
    permitted_office_names.each do |name|
      office = Office.find_by_title(name)
      if office.current_officer == current_user || office.advisor == current_user
        return true
      end
    end

    false
  end

  def authenticate_inviter!
    restrict_to :gamma
  end
end
